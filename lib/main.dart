// main.dart
import 'package:flutter/material.dart';
import 'package:realtimechat2/socketio/LoginScreen.dart';
import 'package:realtimechat2/socketio/Routes.dart';

void main() {
  runApp(HomeApp());
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: Routes.routes(),
      initialRoute: Routes.initScreen(),
    );
  }
}
