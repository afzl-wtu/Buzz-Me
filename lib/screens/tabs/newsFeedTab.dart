import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsFeedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/Admin.jpg'),
                    ),
                    Positioned(
                      bottom: 1,
                      right: 1,
                      child: Container(
                        height: 14,
                        width: 14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Image.asset(
                          'assets/icons/Online.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Container(
                  height: 40,
                  width: devSize.width / 1.33,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'What\'s on your mind?',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: devSize.width / 3.6,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Row(
                    children: [
                      Icon(
                        Icons.photo,
                        size: 15,
                        color: Colors.indigo,
                      ),
                      SizedBox(width: 2),
                      Text('Photo')
                    ],
                  ),
                ),
              ),
              Container(
                height: 40,
                width: devSize.width / 3.6,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 15,
                        color: Colors.indigo,
                      ),
                      SizedBox(width: 2),
                      Text('Check In')
                    ],
                  ),
                ),
              ),
              Container(
                height: 40,
                width: devSize.width / 3.6,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.card_giftcard,
                        size: 15,
                        color: Colors.indigo,
                      ),
                      SizedBox(width: 2),
                      Text('GIF')
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          // Container(
          //   height: 2.5,
          //   width: devSize.width,
          //   color: Colors.grey.shade300,
          // ),
        ],
      ),
    );
  }
}
