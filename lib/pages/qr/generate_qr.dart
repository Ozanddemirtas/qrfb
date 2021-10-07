import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQR extends StatelessWidget {
  final String data;

  const GenerateQR({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Generate QR"),
      ),
      body: Padding(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
        child: Center(
          child: QrImage(
            data: data,
            version: QrVersions.auto,
            size: 200,
            gapless: false,
          ),
        ),
      ),
    );
  }
}
