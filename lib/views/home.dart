import 'package:flutter/material.dart';
import 'package:science_app/views/profile.dart';
import 'package:science_app/views/saved_itm.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:get/get.dart';

import 'message.dart';
import 'nav_hm_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //index for bottomnav
  int myIdx = 0;

  //list of Navitem Pages

  List<Widget> pageList = [
    MainHome(),
    MessagePage(),
    SavedItemPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pageList[myIdx],
      ),
      //bottom navigatiobar
      bottomNavigationBar: BottomNavigationBar(
        //dynamacally changing bottomnavbar index
        onTap: (index) {
          setState(() {
            myIdx = index;
          });
        },
        currentIndex: myIdx,

        //items color
        selectedItemColor: Color.fromARGB(255, 22, 8, 103),
        unselectedItemColor: const Color.fromARGB(255, 117, 114, 114),

        //bottom navbar items
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Message'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmarks_rounded), label: 'Saved'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
