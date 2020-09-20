import 'package:flutter/material.dart';
import 'package:xam_otp_flutter/config/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/settings',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
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
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('OTP Flow'),
        elevation: 0,
        actions: [
          IconButton(
            padding: const EdgeInsets.all(10),
              icon: Icon(Icons.settings),
              splashRadius: 20,
              onPressed: () {
                    print('settings');
                    Navigator.of(context).pushNamed('/settings');
              }
          )
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
          'Click the button to generate OTP',
          style: TextStyle(
                      color: Colors.white, fontSize: 14.0, fontWeight: FontWeight.bold),
        ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
