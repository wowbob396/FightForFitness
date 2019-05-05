import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

class AnnouncementPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
  
  Widget _buildBody(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('announcements').orderBy("date",descending: true).snapshots(),
      builder: (context,snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();
        return _buildList(context, snapshot.data.documents);
      },
    );
  }
  
  Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
    final Announcement announcement = Announcement.fromSnapshot(data);

    return Padding(
      key: ValueKey(announcement.date),
      padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: ListTile(
          title: Text(announcement.text),
          trailing: Text(announcement.date.month.toString() + "-" + announcement.date.day.toString() + "-" + announcement.date.year.toString()),
          onTap: () => {

          }
        ),
      ),
    );
  }
}

class Announcement {
  final String text;
  final DateTime date;
  final DocumentReference reference;
  final Uri link;

  Announcement.fromMap(Map<String, dynamic> map, {this.reference}) :
      text = map['text'],
      link = map['link'],
      date = map['date'];

  Announcement.fromSnapshot(DocumentSnapshot snapshot): this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Announcement<$date:$text:$link>";
}
