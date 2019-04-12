import 'package:flutter/material.dart';
import 'components/ClassPage.dart';
import 'components/CalendarPage.dart';
import 'components/AnnouncementPage.dart';
import 'components/AboutPage.dart';
import 'components/ContactPage.dart';

void main() => runApp(FightApp());

/// class for our main application
class FightApp extends StatefulWidget {
  FightApp({Key key}) : super(key: key);

  @override
  _FightAppState createState() => _FightAppState();
}
/// Main app class
class _FightAppState extends State<FightApp> {
    int _selectedIndex = 0;
    final _pages = [
      new ClassPage(),
      new CalendarPage(),
      new AboutPage(),
      new ContactPage(),
      new AnnouncementPage(),
    ];


    /// build function to create the widget
    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        accentColor: Colors.lightGreen,
      ),
      title: "Fight For Fitness",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fight For Fitness"),
          actions: <Widget>[
            IconButton(
              disabledColor: Colors.white,
              icon: Icon(Icons.home),
              onPressed: () => {
                setState(() {
                  _selectedIndex = 0;
                })
              },
            ),
          ],
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items:
          <BottomNavigationBarItem>  [
            BottomNavigationBarItem(icon: Icon(Icons.announcement), title: Text("Announcements")),
            BottomNavigationBarItem(icon: Icon(Icons.filter_hdr),title: Text("Classes")),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("Calendar")),
            BottomNavigationBarItem(icon: Icon(Icons.info), title: Text("About")),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail), title: Text("Contact")),
          ],
          currentIndex: _selectedIndex,
          fixedColor: Colors.green,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }
}