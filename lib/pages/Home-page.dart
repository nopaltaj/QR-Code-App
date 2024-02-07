import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 40),
            child: Image.asset(
              'assets/image/home.png',
              width: 300,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              'Hi, Welcome to \n QR Code App',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10, left: 20, right: 20, top: 0),
            child: Text(
              'in this application you can scan qr code and you can also create qr code.',
              style: TextStyle(color: Colors.black, fontSize: 18),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/scan");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      'Scan QR',
                      style: TextStyle(color: Colors.white),
                    ),
                    padding:
                        EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.popAndPushNamed(context, "/generate");
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.deepPurple),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      'Generate QR',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    padding:
                        EdgeInsets.only(top: 10, bottom: 10, left: 30, right: 30),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
