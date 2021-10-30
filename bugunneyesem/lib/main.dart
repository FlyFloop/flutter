import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            'BUGÜN NE YESEM',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  YemekSayfasi_State createState() => YemekSayfasi_State();
}

// ignore: camel_case_types
class YemekSayfasi_State extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuksuyu Çorbası',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];
  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];
  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  void yemekdegistir() {
    setState(() {
      print('yemek degistir works');
      Random random = new Random();
      int randomNumber = random.nextInt(5) + 1;
      int randomNumber1 = random.nextInt(5) + 1;
      int randomNumber12 = random.nextInt(5) + 1;
      corbaNo = randomNumber;
      tatliNo = randomNumber12;
      yemekNo = randomNumber1;

      Image.asset('assets/corba_$corbaNo.jpg');
      Image.asset('assets/yemek_$yemekNo.jpg');
      Image.asset('assets/tatli_$tatliNo.jpg');
    });
  }

  String getCorbaName() {
    return corbaAdlari[corbaNo - 1];
  }

  String getYemekName() {
    return yemekAdlari[yemekNo - 1];
  }

  String getTatliName() {
    return tatliAdlari[tatliNo - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(30),
            child: TextButton(
              style: TextButton.styleFrom(
                  shadowColor: Colors.white, backgroundColor: Colors.white),
              onPressed: () => yemekdegistir(),
              child: Image.asset('assets/corba_$corbaNo.jpg'),
            ),
          )),
          Text(
            getCorbaName(),
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              color: Colors.black,
              height: 5,
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(30),
            child: TextButton(
              child: Image.asset('assets/yemek_$yemekNo.jpg'),
              style: TextButton.styleFrom(
                  shadowColor: Colors.white, backgroundColor: Colors.white),
              onPressed: () => yemekdegistir(),
            ),
          )),
          Text(
            getYemekName(),
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              color: Colors.black,
              height: 5,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(30),
              child: TextButton(
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
                style: TextButton.styleFrom(
                    shadowColor: Colors.white, backgroundColor: Colors.white),
                onPressed: () => yemekdegistir(),
              ),
            ),
          ),
          Text(
            getTatliName(),
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              color: Colors.black,
              height: 5,
            ),
          ),
        ],
      ),
    );
  }
}
