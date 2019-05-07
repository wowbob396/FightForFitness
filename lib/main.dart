import 'package:flutter/material.dart';
import 'components/ClassPage.dart';
import 'components/CalendarPage.dart';
import 'components/AnnouncementPage.dart';
import 'components/AboutPage.dart';
import 'components/ContactPage.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

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
      new AnnouncementPage(),
      new ClassPage(),
      new CalendarPage(),
      new AboutPage(),
      new ContactPage(),
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
          leading: IconButton(
            icon: Icon(
              Icons.menu,
              semanticLabel: 'menu',
            ),
            onPressed: () {
              print("Menu Button");
            },
          ),
          title: Text("Fight For Fitness"),
        ),
        body: _pages[_selectedIndex],
        bottomNavigationBar: BottomNavyBar(
          items:
          <BottomNavyBarItem>  [
            BottomNavyBarItem(icon: Icon(Icons.announcement), title: Text("Announcements"),activeColor: Colors.green),
            BottomNavyBarItem(icon: Icon(Icons.filter_hdr),title: Text("Classes"),activeColor: Colors.green),
            BottomNavyBarItem(icon: Icon(Icons.calendar_today), title: Text("Calendar"),activeColor: Colors.green),
            BottomNavyBarItem(icon: Icon(Icons.info), title: Text("About"),activeColor: Colors.green),
            BottomNavyBarItem(icon: Icon(Icons.contact_mail), title: Text("Contact"),activeColor: Colors.green),
          ],
          currentIndex: _selectedIndex,
          onItemSelected: _onItemTapped,
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