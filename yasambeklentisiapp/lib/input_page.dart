import 'package:flutter/material.dart';

import 'container.dart';

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

String resimlink =
    'https://w7.pngwing.com/pngs/590/1011/png-transparent-gender-symbol-computer-icons-male-symbol-miscellaneous-gender-symbol-man.png';
double icilensigara = 0;
String cinsiyet = '';
double yapilansporsayi = 0;

class _InputpageState extends State<Inputpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'YAŞAM BEKLENTİSİ',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    margin: EdgeInsets.all(10),
                  )),
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    margin: EdgeInsets.all(10),
                  )),
                ],
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Günde kaç paket sigara içiyorsunuz?',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      ('${icilensigara.round()}'),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Slider(
                      max: 20,
                      min: 0,
                      value: icilensigara,
                      onChanged: (double newvalue) {
                        setState(() {
                          icilensigara = newvalue;
                        });
                      },
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25)),
                margin: EdgeInsets.all(10),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Haftada kaç gün spor yapıyorsunuz?',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      ('${yapilansporsayi.round()}'),
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Slider(
                      max: 7,
                      min: 0,
                      value: yapilansporsayi,
                      onChanged: (double newvalue) {
                        setState(() {
                          yapilansporsayi = newvalue;
                        });
                      },
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Row(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print('alper');
                            cinsiyet = 'ERKEK';
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            margin: EdgeInsets.all(10),
                            child: Image.network(resimlink),
                          ),
                        ),
                      ),
                    ],
                  )),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            print('alper1');
                            cinsiyet = 'KADIN';
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                            margin: EdgeInsets.all(10),
                            child: Image.network(
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Venus_symbol.svg/160px-Venus_symbol.svg.png'),
                          ),
                        ),
                      ),
                    ],
                  ))
                ],
              )),
            ],
            crossAxisAlignment: CrossAxisAlignment.stretch,
          ),
        ));
  }
}
