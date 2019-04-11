import 'package:flutter/material.dart';

void main() => runApp(FightApp());

class FightApp extends StatefulWidget {
  FightApp({Key key}) : super(key: key);

  @override
  _FightAppState createState() => _FightAppState();
}
/// Main app class
class _FightAppState extends State<FightApp> {
    int _selectedIndex = 0;

    final _widgetOptions = [
      Text('Classes'),
      Text('Calendar'),
      Text('About'),
      Text('Contact'),
    ];

    @override
    Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fight For Fitness",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Fight For Fitness"),

        ),
        body: Center(
          child: Text("Test"),
        ),
        bottomNavigationBar: BottomNavigationBar(items:
          <BottomNavigationBarItem>  [
            BottomNavigationBarItem(icon: Icon(Icons.filter_hdr),title: Text("Classes")),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_today), title: Text("Calendar")),
            //BottomNavigationBarItem(icon: Icon(Icons.info), title: Text("About")),
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

Widget _customNavBar() {

}

Widget buttonSection() {
  Color color = Colors.blue;
  print("Hello, World");
  Widget buttonSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [

      ],
    ),
  );

  return buttonSection;
}



Widget buildButtonColumn(Color color, IconData icon, String label) {
  return Column (

  );


}