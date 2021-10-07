import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQR extends StatelessWidget {
  final double amount;
  final String data;

  const GenerateQR({Key? key, required this.amount, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
      child: Center(
        child: QrImage(
          data: data,
          version: QrVersions.auto,
          size: 320,
          gapless: false,
        ),
      ),
    );
  }
}
