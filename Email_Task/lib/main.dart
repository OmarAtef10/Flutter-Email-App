import 'package:flutter/material.dart';
import 'Home.dart';
void main() {
  runApp(EmailApp());
}

class EmailApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:Home(),
      );
}
}
