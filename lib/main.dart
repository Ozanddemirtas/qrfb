import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:qrbla/pages/home.dart';
import 'package:qrbla/pages/qr/generate_qr.dart';

import 'pages/qr/qr_scanner.dart';

void main() async {
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QR Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // ignore: prefer_const_constructors
        home: HomePage());
  }
}
