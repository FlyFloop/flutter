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
        appBar: AppBar(
          title: Text(
            'Alper Yorgun Info',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media-exp1.licdn.com/dms/image/C4E03AQHiPdaaDg80Ig/profile-displayphoto-shrink_200_200/0/1608039022802?e=1634169600&v=beta&t=bCuCkYefNCerVZ52enje9oO07VpG4MMedEKF5JY8Rn0'),
                  radius: 70,
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.brown[900],
                  child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        size: 50,
                      ),
                      title: Text(
                        '+905435602673',
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                Container(
                  child: Divider(
                    height: 5,
                    color: Colors.brown[900],
                  ),
                  width: 300,
                  color: Colors.brown[900],
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.brown[900],
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 50,
                    ),
                    title: Text(
                      '+905435602673',
                      style: TextStyle(fontSize: 20),
                    ),
                    subtitle: Text('WOW'),
                    isThreeLine: false,
                    enabled: true,
                    selected: false,

                    //ontap()
                    //onlongpress()
                    trailing: Icon(Icons.access_alarm),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    print('butona tıkladınız');
                  },
                  child: Text('Tıkla'),
                 )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
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
*/
