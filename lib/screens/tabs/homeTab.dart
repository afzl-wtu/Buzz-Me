import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/Admin.jpg'),
            ),
            title: Row(
              children: [
                Text('Digi'),
                SizedBox(
                  width: 5,
                ),
                Image.asset(
                  'assets/icons/staff.png',
                  height: 20,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
