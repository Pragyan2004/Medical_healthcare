import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/pages/homescreen.dart';
import 'package:medical_healthcare/pages/schedule_screen.dart';
import 'package:medical_healthcare/pages/setting_screen.dart';

import '../pages/messagescreen.dart';
class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectIndex=0;
  final _screen=[
    HomeScreen(),
    //Message screen
    MessageScreen(),
    //schedule screen
    ScheduleScreen(),
    //setting screen
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white,
      body: _screen[_selectIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black45,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
          currentIndex: _selectIndex,
          onTap: (index){
            setState(() {
              _selectIndex=index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),
            label: "Home"
            ),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill),
                label: "Message"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined),
                label: "Schedule"
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
                label: "Setting"
            ),
          ],
        ),
      ),
    );
  }
}
