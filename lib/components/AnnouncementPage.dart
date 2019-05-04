import "package:flutter/material.dart";
import 'package:cloud_firestore/cloud_firestore.dart';

class AnnouncementPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getData(context),
    );
  }

  Widget _getData(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: Firestore.instance.collection('announcements').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return LinearProgressIndicator();
        List<DocumentSnapshot> data = snapshot.data.documents;
        List<String> test = new List<String>();

        for (DocumentSnapshot snap in data) {
          //print(snap.data.toString());
        }
        return Scaffold(
          body: Text(""),
        );
      },
    );
  }

  Widget _buildList(BuildContext context, List<Map> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, Map data) {
    final Announcement announcement = Announcement.fromMap(data);

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
          trailing: Text(announcement.date.toIso8601String()),
          onTap: () => print(announcement)
        ),
      ),
    );
  }
}

class Announcement {
  final String text;
  final DateTime date;
  final DocumentReference reference;

  Announcement.fromMap(Map<String, dynamic> map, {this.reference}) :
      assert(map['text'] != null),
      assert(map['date'] != null),
      text = map['text'],
      date = map['date'];

  Announcement.fromSnapshot(DocumentSnapshot snapshot): this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Announcement<$date:$text>";
}
