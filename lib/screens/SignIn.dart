import 'package:buzz_me/screens/SignUp.dart';
import 'package:buzz_me/screens/main_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignIns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final devSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        overflow: Overflow.visible,
        children: [
          SingleChildScrollView(
            child: Container(
              height: devSize.height,
              width: double.infinity,
            ),
          ),
          Container(
            color: Colors.indigo,
            height: devSize.height / 2.3,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: devSize.width / 1.4, top: 40),
                  child: DropdownButton(
                      dropdownColor: Colors.indigo,
                      iconEnabledColor: Colors.white,
                      items: [
                        DropdownMenuItem(
                          child: Text(
                            'English US',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ),
                      ],
                      onChanged: (a) {}),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Text(
                    'Sign In to Continue,',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: Text(
                    'Buzz Me',
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 15,
            top: 200,
            right: 15,
            child: Container(
              height: devSize.height / 1.45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey),
                ],
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text(
                      'Sign In',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      'Username',
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 10, right: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Text(
                      'Password',
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, top: 10, right: 15),
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, top: 18),
                        child: TextField(
                          decoration: InputDecoration(
                              suffix: IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  size: 20,
                                  color: Colors.indigo,
                                ),
                                onPressed: () {},
                              ),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: devSize.width / 1.8, top: 10),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 20),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          color: Colors.indigo,
                          child: Checkbox(
                            checkColor: Colors.indigo,
                            activeColor: Colors.white,
                            value: true,
                            onChanged: (a) {},
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('Remember login')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        Container(
                          height: 22,
                          width: 22,
                          color: Colors.indigo,
                          child: Checkbox(
                            checkColor: Colors.indigo,
                            activeColor: Colors.white,
                            value: true,
                            onChanged: (a) {},
                          ),
                        ),
                        SizedBox(width: 10),
                        Text('Login as invisible')
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 15, right: 15, top: devSize.height / 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => MainScreen(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        child: Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 10, bottom: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => SignUps(),
                          ),
                        );
                      },
                      child: Container(
                        height: 50,
                        child: Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.indigo),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
