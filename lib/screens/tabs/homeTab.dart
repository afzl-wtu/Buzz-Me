import 'package:buzz_me/models/socialFriends.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeTab extends StatelessWidget {
  List<SocialFriends> friends = [
    SocialFriends(
        profileURL: 'assets/images/social2.jpg',
        name: 'Pretzinta',
        description: 'Well to Buzz me',
        iconpro: 'assets/icons/ic_status.png'),
    SocialFriends(
        profileURL: 'assets/images/social3.jpg',
        name: 'Cathrine',
        description: 'Cathrine are here',
        iconpro: 'assets/icons/ic_status1.png'),
    SocialFriends(
        profileURL: 'assets/images/social4.jpg',
        name: 'Pretzinta',
        description: 'Pretizinta lovely',
        iconpro: 'assets/icons/ic_status2.png'),
    SocialFriends(
        profileURL: 'assets/images/social5.jpg',
        name: 'Lucy',
        description: 'Lucy are actor',
        iconpro: 'assets/icons/temp1.png'),
    SocialFriends(
        profileURL: 'assets/images/social6.jpg',
        name: 'Marry',
        description: 'Come fast',
        iconpro: 'assets/icons/ic_status3.png'),
    SocialFriends(
        profileURL: 'assets/images/social2.jpg',
        name: 'Pretzinta',
        description: 'Well to Buzz me',
        iconpro: 'assets/icons/temp1.png'),
    SocialFriends(
        profileURL: 'assets/images/social3.jpg',
        name: 'Cathrine',
        description: 'Cathrine are here',
        iconpro: 'assets/icons/temp1.png'),
  ];
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/Admin.jpg'),
                ),
                Positioned(
                  bottom: 2,
                  right: 2,
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
            title: Row(
              children: [
                Text('Digi'),
                SizedBox(width: 5),
                Image.asset('assets/icons/staff.png', height: 20),
                SizedBox(
                  width: devSize.width / 2.2,
                ),
                Image.asset('assets/icons/egg.png', height: 20),
                SizedBox(width: 5),
                Text('2'),
                SizedBox(height: 30),
              ],
            ),
            subtitle: Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'What\'s on your mind?',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 2.5,
            width: devSize.width,
            color: Colors.grey.shade300,
          ),
          SizedBox(height: 15),
          SizedBox(
            height: 150,
            width: devSize.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: Stack(
                        overflow: Overflow.visible,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/images/Admin.jpg'),
                          ),
                          Positioned(
                            top: 70,
                            left: 29,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.indigo,
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Create a \nStory',
                      style: TextStyle(fontWeight: FontWeight.w900),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(width: 10),
                buildSocialPeople(
                    context, 'John Eden', 'assets/images/social1.jpg'),
                buildSocialPeople(
                    context, 'Pretzinta', 'assets/images/social2.jpg'),
                buildSocialPeople(
                    context, 'Caterin', 'assets/images/social3.jpg'),
                buildSocialPeople(context, 'Lucy', 'assets/images/social4.jpg'),
                buildSocialPeople(
                    context, 'Beatrice', 'assets/images/social5.jpg'),
                buildSocialPeople(context, 'Jack', 'assets/images/social6.jpg'),
                buildSocialPeople(
                    context, 'Petter', 'assets/images/social7.webp')
              ],
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 2.5,
            width: devSize.width,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'All Friends',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                Text(
                  '(250)',
                  style: TextStyle(
                      color: Colors.indigo, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: devSize.width / 2.75,
                ),
                DropdownButton(
                  value: 'Online',
                  items: [
                    DropdownMenuItem(
                      value: 'Online',
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green.shade300,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Online',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Away',
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.amber.shade300,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Away',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Busy',
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.red.shade300,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Busy',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Offline',
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.grey.shade300,
                          ),
                          SizedBox(width: 7),
                          Text(
                            'Offline',
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    ),
                  ],
                  onChanged: (a) {
                    print('PP $a');
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: friends.length,
              itemBuilder: (contex, i) {
                return ListTile(
                  leading: Container(
                    height: 45,
                    width: 45,
                    padding: EdgeInsets.all(3),
                    margin: EdgeInsets.only(left: 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Colors.red),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(friends[i].profileURL),
                        ),
                        Positioned(
                          top: 29,
                          left: 29,
                          child: Container(
                            height: 12,
                            width: 12,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Image.asset(
                              'assets/icons/Online.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  title: Row(
                    children: [
                      Text(friends[i].name),
                      Image.asset(
                        friends[i].iconpro,
                        width: 35,
                      )
                    ],
                  ),
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

Widget buildSocialPeople(BuildContext context, String text, String photo) {
  return Padding(
    padding: const EdgeInsets.only(right: 10),
    child: Container(
      height: 150,
      width: 100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              photo,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
