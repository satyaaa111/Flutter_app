import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app3/screens/home_screen.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  
  int _selectedIndex = 0;
  static final List<Widget>_widgetOptions=<Widget>[
    const HomeScreen(),
    const Text("Search"),
    const Text("Tickets"),
    const Text("Profile")
  ];
  void _onItemtapped(int index){
    setState(() {
      _selectedIndex=index;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions[_selectedIndex]
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemtapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Color.fromARGB(255, 72, 138, 137),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.black54,
        items:const [
         BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket),label: "Ticket"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "person")
      ]),
    );
  }
}