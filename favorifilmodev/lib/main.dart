import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text(
          'Favori Filmim',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(
            'https://cdn.digiturkburada.com/film-izle/prestij.jpg'),
      ),
    ),
  ));
}
