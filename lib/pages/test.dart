import 'package:flutter/material.dart';

class percobaan extends StatelessWidget {
  const percobaan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(children: [
          Padding(padding: EdgeInsets.only(top: 100)),
          ClipOval(
              child: Container(
            height: 150,
            width: 150,
            color: Colors.orange,
          )),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              'Lorem Ipsum',
              style: TextStyle(
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Text(
              'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.redAccent),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.black),
                  ),
                  padding:
                      EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
