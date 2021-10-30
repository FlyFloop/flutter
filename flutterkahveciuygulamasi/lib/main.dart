import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        appBar: AppBar(
          title: Text('Flutter Kahvecisi'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.lime,
                backgroundImage: NetworkImage(
                    'https://www.yongaci.com/wp-content/uploads/2019/11/turkish-coffee-1024x640.jpg'),
              ), //daire içinde resim
              Text(
                'Flutter Kahvecisi',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 45, color: Colors.brown[900]),
              ),
              Text(
                'BİR FİNCAN UZAĞINIZDA',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Card(
                /*
                width: 400,
                height: 50,
                */
                margin: EdgeInsets.all(15),
                color: Colors.brown[900],
                child: Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 50,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'alperyorgun2@gmail.com',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Card(
                /*
                width: 400,
                height: 50,
                */
                margin: EdgeInsets.all(15),
                color: Colors.brown[900],
                child: Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 50,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      '+905435602673',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
