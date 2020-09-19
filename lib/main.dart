import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OtpHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class OtpHomePage extends StatefulWidget {
  OtpHomePage({Key key}) : super(key: key);

  @override
  _OtpHomePageState createState() => _OtpHomePageState();
}

class _OtpHomePageState extends State<OtpHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
      ),
    );
  }
}
