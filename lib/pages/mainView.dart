import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:twitter_ui/pages/searchPage.dart';

import 'chatPage.dart';
import 'homePage.dart';
import 'messagePage.dart';
import 'notificationPage.dart';

class MainView extends StatefulWidget {
   MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final pages = [
    HomePage(),
    SearchPage(),
    ChatsPage(),
    NotificationsPage(),
    MessagesPage(),
  ];

  PageController page= PageController();
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) =>setState(() {
          currentIndex = index;

        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 25,color: Colors.black,),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search,size: 25,color: Colors.black,),
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mic_rounded,size: 25,color: Colors.black,),
              label: "Chats"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_alert,size: 25,color: Colors.black,),
              label: "Notifications"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.mail,size: 25,color: Colors.black,),
              label: "Messages"
          ),
        ],
      ),
      body: pages[currentIndex],
      // PageView(
      //   children: [
      //     HomePage(),
      //     SearchPage(),
      //     ChatsPage(),
      //     NotificationsPage(),
      //     MessagesPage(),
      //   ],
      // ),
    );
  }
}
