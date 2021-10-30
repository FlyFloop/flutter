import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: DrumPage(),
      ),
    );
  }
}

void play(String input) {
  oynat.play(input);
}

final oynat = AudioCache();

class DrumPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                drumButton(Colors.blue, 'bip.wav'),
                drumButton(Colors.orange, 'ridebel.wav')
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                drumButton(Colors.pink, 'clap1.wav'),
                drumButton(Colors.grey, 'clap2.wav')
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                drumButton(Colors.yellow, 'clap3.wav'),
                drumButton(Colors.lightBlue, 'crash.wav')
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                drumButton(Colors.purple, 'how.wav'),
                drumButton(Colors.brown, 'oobah.wav')
              ],
            ),
          ),
        ],
      ),
    );
  }
}

TextButton drumButton(Color color, String songinput) {
  return TextButton(
      child: Container(
        width: 190,
        height: 190,
        color: color,
      ),
      onPressed: () {
        play(songinput);
      });
}
