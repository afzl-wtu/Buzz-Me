import 'package:buzz_me/models/socialFriends.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationScreen extends StatelessWidget {
  List<SocialFriends> friends = [
    SocialFriends(
        profileURL: 'assets/images/social2.jpg',
        name: 'Pretzinta is share your post',
        description: '5 second ago',
        iconpro: 'assets/images/social6.jpg'),
    SocialFriends(
        profileURL: 'assets/images/social3.jpg',
        name: 'Cathrine liked your post',
        description: '5 minutes ago',
        iconpro: 'assets/images/social5.jpg'),
    SocialFriends(
        profileURL: 'assets/images/social4.jpg',
        name: 'Pretzinta commented on your photo',
        description: 'Pretizinta lovely',
        iconpro: 'assets/images/social2.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo,
        title: Text('Notifications'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text(
              'New',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: friends.length,
              itemBuilder: (contex, i) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(friends[i].profileURL),
                  ),
                  trailing: Container(
                    color: Colors.amber,
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      friends[i].iconpro,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(friends[i].name),
                  subtitle: Text(friends[i].description),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 20,
            ),
            child: Text(
              'Earlier',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: friends.length,
              itemBuilder: (contex, i) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(friends[i].profileURL),
                  ),
                  trailing: Container(
                    color: Colors.amber,
                    height: 35,
                    width: 35,
                    child: Image.asset(
                      friends[i].iconpro,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(friends[i].name),
                  subtitle: Text(friends[i].description),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
