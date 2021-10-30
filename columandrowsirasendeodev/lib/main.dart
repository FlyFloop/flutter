import 'package:flutter/material.dart';

void main() {
  runApp(odev());
}

//7 tane bolum  4.row diğerleri column 4.row içinde 2 tane container diğerleri tekli container

// ignore: camel_case_types
class odev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text(
              'Column and Row odev',
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.red,
          ),
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Text('Container'),
                  alignment: Alignment.centerLeft,
                ),
                Container(
                  height: 100,
                  color: Colors.black,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.red,
                    ),
                    Container(
                      width: 100,
                      color: Colors.black,
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                Container(
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ));
  }
}
