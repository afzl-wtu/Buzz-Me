import 'package:buzz_me/screens/tabs/homeTab.dart';
import 'package:buzz_me/screens/tabs/inboxTab.dart';
import 'package:buzz_me/screens/tabs/moreTab.dart';
import 'package:buzz_me/screens/tabs/newsFeedTab.dart';
import 'package:buzz_me/screens/tabs/profileTab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:buzz_me/screens/notification.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  PageController pageController;
  int pageIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.jumpToPage(pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
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
          InkWell(
            highlightColor: Colors.indigo,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => NotificationScreen()));
            },
            child: Image.asset(
              'assets/icons/notification.png',
              height: 20,
              width: 20,
            ),
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
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: pageIndex,
        onTap: onTap,
        activeColor: Colors.blue,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                height: 20,
                color: Colors.grey,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/inbox.png',
                height: 20,
                color: Colors.grey,
              ),
              label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/newsfeed.png',
                height: 20,
                color: Colors.grey,
              ),
              label: 'NewsFeed'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/profile.png',
                height: 20,
                color: Colors.grey,
              ),
              label: 'Profile'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/more.png',
                height: 20,
                color: Colors.grey,
              ),
              label: 'More'),
        ],
      ),
    );
  }
}
