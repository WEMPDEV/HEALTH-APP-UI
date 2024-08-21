import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:health_app/pages/Healthstatus.dart';
import 'package:health_app/pages/home_page.dart';
import 'package:health_app/pages/settings.dart';
class trackitnavbars extends StatefulWidget {
  final String username;
  const trackitnavbars({super.key, required this.username});

  @override
  State<trackitnavbars> createState() => _trackitnavbarsState();
}

class _trackitnavbarsState extends State<trackitnavbars> {
  int _selectedIndex = 0;

  void _onSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = [
      HomePage1(),
      Healthstatus(),
      Settings()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color:  Colors.blue[800],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Align(
          heightFactor: 1,
          alignment: Alignment.bottomCenter,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                activeIcon: Icon(Icons.home, color: Colors.white),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.health_and_safety_rounded,),
                activeIcon: Icon(Icons.health_and_safety_rounded, color:  Colors.white),
                label: 'Health Status',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings,),
                activeIcon: Icon(Icons.settings, color: Colors.white),
                label: 'Settings',
              ),
            ],
            showUnselectedLabels: true,
            showSelectedLabels: false,
            currentIndex: _selectedIndex,
            iconSize: 25,
            backgroundColor: Colors.blue[800],
            type: BottomNavigationBarType.fixed,
            elevation: double.infinity,
            onTap: _onSelected,
          ),
        ),
      ),
    );
  }
}