import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

List<String> sorular = [
  'Barcelona İspanyanın başkentidir.',
  'Alanya Antalyanın bir ilçesidir',
  'Afrika bir ülke değildir',
  'ABD, Nato üyesidir',
  'Türkiye, Avrupa Birliği ülkesidir',
  'İstanbul 14.yüzyılda fethedilmiştir',
  'Muğla, Marmara Bölgesindedir',
  'Kadınlarda 23, erkeklerde 46 kromozom bulunur.'
];
int count = 0;
int dogrusayisi = 0;
int yanlissayisi = 0;
String sorutext = sorular[0];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[700],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[700],
          title: Text(
            'BİLGİ YARIŞMASI',
            style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.normal,
                color: Colors.blueGrey[900]),
          ),
        ),
        body: Soru(),
      ),
    );
  }
}

int soruindex = 0;

class Soru extends StatefulWidget {
  @override
  _SoruState createState() => _SoruState();
}

class _SoruState extends State<Soru> {
  void digersoruyagec() {
    setState(() {
      sorutext = sorular[soruindex];
      soruindex++;
      print('doğru sayı:$dogrusayisi');
      print('yanlış sayı:$yanlissayisi');
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Center(
            child: Container(
              width: 500,
              height: 600,
              color: Colors.blueGrey[700],
              margin: EdgeInsets.all(5),
              child: Center(
                child: Text(
                  sorutext,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                child: Container(
                  width: 160,
                  height: 80,
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.green[900],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blueGrey[700],
                  ),
                ),
                onPressed: () {
                  if (count == 0) {
                    dogrusayisi++;
                  }
                  if (count == 1) {
                    dogrusayisi++;
                  }
                  if (count == 2) {
                    dogrusayisi++;
                  }
                  if (count == 3) {
                    dogrusayisi++;
                  }
                  if (count == 4) {
                    yanlissayisi++;
                  }
                  if (count == 5) {
                    yanlissayisi++;
                  }
                  if (count == 6) {
                    yanlissayisi++;
                  }
                  if (count == 7) {
                    yanlissayisi++;
                  }
                  digersoruyagec();
                  count++;
                },
              ),
              TextButton(
                child: Container(
                  width: 160,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.blueGrey[700],
                  ),
                  child: Icon(
                    Icons.thumb_down,
                    color: Colors.red[900],
                  ),
                ),
                onPressed: () {
                  digersoruyagec();
                  if (count == 0) {
                    yanlissayisi++;
                  }
                  if (count == 1) {
                    yanlissayisi++;
                  }
                  if (count == 2) {
                    yanlissayisi++;
                  }
                  if (count == 3) {
                    yanlissayisi++;
                  }
                  if (count == 4) {
                    dogrusayisi++;
                  }
                  if (count == 5) {
                    dogrusayisi++;
                  }
                  if (count == 6) {
                    dogrusayisi++;
                  }
                  if (count == 7) {
                    dogrusayisi++;
                  }
                  count++;
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
