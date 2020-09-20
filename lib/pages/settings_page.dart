import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {

  SettingsPage({Key key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Settings'),
      ),
      body: Container(
      ),
    );
  }
}
