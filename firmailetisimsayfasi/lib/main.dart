import 'package:flutter/material.dart';

void main() {
  runApp(
    myApp(),
  );
}

/*

Burada column için kullanılan her şey row'da da çalışıyor
aralarındaki tek fark programın yatay yerine dikeyde çalışması
kodun en altında column'u kopyaladık şimdi sadece column ismini row yapıp runlıcaz
*/

// ignore: camel_case_types
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firma İletişim Sayfası'),
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            /*
            mainAxisSize:
                MainAxisSize.min, //kaplayabileceği minimum yeri kaplıyor
            mainAxisAlignment:
                MainAxisAlignment.end, //nesneleri aşşağıdan yukarı çizer
                mainAxisAlignment: MainAxisAlignment.center,//ortadan çizer
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,//nesneler arasında eşit boşluk bırakır yanında mainAxisSize: MainAxisSize.min, 
                kullanılırsa margine gerek kalmaz(column için)
                mainAxisAlignment: MainAxisAlignment.spaceBetween, //en üste ve en alta elemanı koyar diğerlini columa devam ettirir
                crossAxisAlignment: CrossAxisAlignment.end, //column solda ise sağa alır
                width: double.infinity, //ekranın alabileceği kadar genişlik oluştur
                crossAxisAlignment: CrossAxisAlignment.stretch, //yatayda ekranı doldur
                SizedBox(), //container veya bir şey arasına görünmeyen boşluk ekler swiftteki spacer gibi
            */
            children: [
              Container(
                width: 60,
                height: 60,
                alignment: Alignment.center,
                child: Image.network(
                    'https://i.pinimg.com/originals/03/e1/b0/03e1b0207489ad32d10b9a860ffc6623.png'),
                padding: EdgeInsets.all(5), //içindeki nesneler arası uzaklık
                margin: EdgeInsets.all(10), //etrafındaki nesneler arası uzaklık
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.black,
                    borderRadius: BorderRadiusDirectional.circular(9)),
              ),
              Container(
                width: 60,
                height: 60,
                alignment: Alignment.center,

                child: Image.network(
                    'https://i.pinimg.com/originals/03/e1/b0/03e1b0207489ad32d10b9a860ffc6623.png'),
                padding: EdgeInsets.all(5), //içindeki nesneler arası uzaklık
                margin: EdgeInsets.all(10), //etrafındaki nesneler arası uzaklık
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.black,
                    borderRadius: BorderRadiusDirectional.circular(9)),
              ),
              Container(
                width: 60,
                height: 60,
                alignment: Alignment.center,

                child: Image.network(
                    'https://i.pinimg.com/originals/03/e1/b0/03e1b0207489ad32d10b9a860ffc6623.png'),
                padding: EdgeInsets.all(5), //içindeki nesneler arası uzaklık
                margin: EdgeInsets.all(10), //etrafındaki nesneler arası uzaklık
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.black,
                    borderRadius: BorderRadiusDirectional.circular(9)),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,

                    child: Image.network(
                        'https://i.pinimg.com/originals/03/e1/b0/03e1b0207489ad32d10b9a860ffc6623.png'),
                    padding:
                        EdgeInsets.all(5), //içindeki nesneler arası uzaklık
                    margin:
                        EdgeInsets.all(10), //etrafındaki nesneler arası uzaklık
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.circular(9)),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,

                    child: Image.network(
                        'https://i.pinimg.com/originals/03/e1/b0/03e1b0207489ad32d10b9a860ffc6623.png'),
                    padding:
                        EdgeInsets.all(5), //içindeki nesneler arası uzaklık
                    margin:
                        EdgeInsets.all(10), //etrafındaki nesneler arası uzaklık
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.circular(9)),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    alignment: Alignment.center,

                    child: Image.network(
                        'https://i.pinimg.com/originals/03/e1/b0/03e1b0207489ad32d10b9a860ffc6623.png'),
                    padding:
                        EdgeInsets.all(5), //içindeki nesneler arası uzaklık
                    margin:
                        EdgeInsets.all(10), //etrafındaki nesneler arası uzaklık
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.black,
                        borderRadius: BorderRadiusDirectional.circular(9)),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.fact_check_outlined), label: 'Todo'),
            BottomNavigationBarItem(icon: Icon(Icons.done), label: 'Done')
          ],
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}

/*
child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            /*
            mainAxisSize:
                MainAxisSize.min, //kaplayabileceği minimum yeri kaplıyor
            mainAxisAlignment:
                MainAxisAlignment.end, //nesneleri aşşağıdan yukarı çizer
                mainAxisAlignment: MainAxisAlignment.center,//ortadan çizer
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,//nesneler arasında eşit boşluk bırakır yanında mainAxisSize: MainAxisSize.min, kullanılırsa margine gerek kalmaz(column için)
                mainAxisAlignment: MainAxisAlignment.spaceBetween, //en üste ve en alta elemanı koyar diğerlini columa devam ettirir
                crossAxisAlignment: CrossAxisAlignment.end, //column solda ise sağa alır
                width: double.infinity, //ekranın alabileceği kadar genişlik oluştur
                crossAxisAlignment: CrossAxisAlignment.stretch, //yatayda ekranı doldur
                SizedBox(), //container veya bir şey arasına görünmeyen boşluk ekler swiftteki spacer gibi
            */
            children: [
              Container(
                width: 60,
                height: 60,
                alignment: Alignment.center,
                child: Image.network(
                    'https://i.pinimg.com/originals/03/e1/b0/03e1b0207489ad32d10b9a860ffc6623.png'),
                padding: EdgeInsets.all(5), //içindeki nesneler arası uzaklık
                margin: EdgeInsets.all(10), //etrafındaki nesneler arası uzaklık
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.black,
                    borderRadius: BorderRadiusDirectional.circular(9)),
              ),
              
              Container(
                width: 60,
                height: 60,
                alignment: Alignment.center,

                child: Image.network(
                    'https://i.pinimg.com/originals/03/e1/b0/03e1b0207489ad32d10b9a860ffc6623.png'),
                padding: EdgeInsets.all(5), //içindeki nesneler arası uzaklık
                margin: EdgeInsets.all(10), //etrafındaki nesneler arası uzaklık
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.black,
                    borderRadius: BorderRadiusDirectional.circular(9)),
              ),
              Container(
                width: 60,
                height: 60,
                alignment: Alignment.center,

                child: Image.network(
                    'https://i.pinimg.com/originals/03/e1/b0/03e1b0207489ad32d10b9a860ffc6623.png'),
                padding: EdgeInsets.all(5), //içindeki nesneler arası uzaklık
                margin: EdgeInsets.all(10), //etrafındaki nesneler arası uzaklık
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.black,
                    borderRadius: BorderRadiusDirectional.circular(9)),
              ),
            ],
          ),

*/
