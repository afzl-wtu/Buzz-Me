import 'package:buzz_me/screens/tabs/NewsFeedTab.dart';
import 'package:buzz_me/screens/tabs/homeTab.dart';
import 'package:buzz_me/screens/tabs/inboxTab.dart';
import 'package:buzz_me/screens/tabs/moreTab.dart';
import 'package:buzz_me/screens/tabs/profileTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Buzz Me',
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          Image.asset(
            'assets/icons/search.png',
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 20,
          ),
          Image.asset(
            'assets/icons/notification.png',
            height: 20,
            width: 20,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: PageView(
        children: [
          HomeTab(),
          InboxTab(),
          NewsFeedTab(),
          ProfileTab(),
          MoreTab(),
        ],
      ),
      bottomNavigationBar: CupertinoTabBar(
        inactiveColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                height: 20,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/inbox.png',
                height: 20,
              ),
              label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/newsfeed.png',
                height: 20,
              ),
              label: 'NewsFeed'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/profile.png',
                height: 20,
              ),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/more.png',
                height: 20,
              ),
              label: 'More'),
        ],
      ),
    );
  }
}
