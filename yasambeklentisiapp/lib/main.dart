import 'package:flutter/material.dart';

import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.lightBlue,
          accentColor: Colors.lightBlue,
          scaffoldBackgroundColor: Colors.lightBlue,
          brightness: Brightness.light), //butonların rengi
      home: Inputpage(),
    );
  }
}
