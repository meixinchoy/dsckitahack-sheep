import 'package:codedecoders/screens/adopt.dart';
import 'package:codedecoders/screens/explore.dart';
import 'package:codedecoders/screens/community.dart';
import 'package:codedecoders/screens/notification.dart';
import 'package:codedecoders/screens/profile.dart';
import 'package:codedecoders/screens/donation.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> _children = [
    AdoptPage(),
    TestDonation(),
    Community(),
    Notipage(),
    ProfilePage(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueAccent,
        elevation: 0,
        iconSize: 32,
        items: [
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.heart_o),
            label: "Adopt",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.money),
            label: "Donate",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Community",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.bell_o),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(LineAwesomeIcons.user),
            label: "Profile",
          ),
        ],
      ),
      body: SafeArea(child: _children[_currentIndex]),
    );
  }
}
