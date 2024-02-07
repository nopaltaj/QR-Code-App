import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

class GenerateCodePage extends StatefulWidget {
  const GenerateCodePage({super.key});

  @override
  State<GenerateCodePage> createState() => _GenerateCodePageState();
}

class _GenerateCodePageState extends State<GenerateCodePage> {
  String? qrData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 171, 143, 249),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[400],
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Generate QR Code',
            style: TextStyle(color: Colors.white)),
        leading: IconButton(onPressed: () {
          Navigator.popAndPushNamed(context, "/home");
        }, icon: const Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 170, right: 40, left: 40, bottom: 170),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.white),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 18, right: 18, bottom: 18),
                      child: TextField(
                        style: const TextStyle(color: Colors.black),
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                          ),
                        ),
                        onSubmitted: (value) {
                          setState(() {
                            qrData = value;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 20.0,
                        left: 20.0,
                      ),
                      child: Column(children: [
                        if (qrData != null) PrettyQrView.data(data: qrData!)
                      ]),
                    )
                  ],
                ),
              ),
            ),
            //
          ),
        ),
      ),
    );
  }
}