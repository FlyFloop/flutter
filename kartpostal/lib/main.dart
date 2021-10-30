import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[800],
          title: Text(
            'Kartpostal Uygulaması',
            textAlign: TextAlign.center,
          ),
        ),
        body: Center(
          child: Image.network(
            'https://www.kagito.com/wp-content/uploads/2017/11/stanbul-Kartpostal-simit-marti.jpg',
          ),
        )),
  ));
}
/*
image ortalamka için image widgeti center içine alıp tekrar yeniledik
*/
