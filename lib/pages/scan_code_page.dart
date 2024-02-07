import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanCodePage extends StatefulWidget {
  const ScanCodePage({super.key});

  @override
  State<ScanCodePage> createState() => _ScanCodePageState();
}

class _ScanCodePageState extends State<ScanCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
        title: const Text(
          'Scan QR Code',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(onPressed: () {
          Navigator.popAndPushNamed(context, "/home");
        }, icon: const Icon(Icons.arrow_back, color: Colors.white,)),
      ),
      backgroundColor: const Color.fromARGB(255, 171, 143, 249),
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80, bottom: 0, left: 40, right: 40),
              child: Text(
                'Scan Your Qr Here!',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 65,
                    top: 65,
                    left: 65,
                    right: 65,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: MobileScanner(
                        controller: MobileScannerController(
                          detectionSpeed: DetectionSpeed.noDuplicates,
                          returnImage: true,
                        ),
                        onDetect: (capture) {
                          final List<Barcode> barcodes = capture.barcodes;
                          final Uint8List? image = capture.image;
                          for (final barcode in barcodes) {
                            print('Barcode found! ${barcode.rawValue}');
                          }
                          if (image != null) {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text(
                                    barcodes.first.rawValue ?? "",
                                  ),
                                  content: Image(
                                    image: MemoryImage(image),
                                  ),
                                );
                              },
                            );
                          }
                        },
                      ),
                    ),
                  ),
                  Positioned(
                      child: SizedBox(
                    child: Image.asset('assets/image/garis-qr.png'),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
