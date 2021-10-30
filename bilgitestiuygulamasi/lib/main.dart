import 'package:bilgitestiuygulamasi/soru.dart';
import 'package:bilgitestiuygulamasi/test_veri.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: soruSayfasi(),
    );
  }
}

class soruSayfasi extends StatefulWidget {
  @override
  _soruSayfasiState createState() => _soruSayfasiState();
}

class _soruSayfasiState extends State<soruSayfasi> {
  List<Widget> secimler = []; //max 17---> wrap ile çözüldü
  void butuonFonksiyonu(bool input) {
    if (testveri.testbittimi() == true) {
      //alertdialog,index == 0,secimler reset
      showAlertDialog(BuildContext context) {
        // set up the buttons
        Widget cancelButton = TextButton(
          child: Text("Cancel"),
          onPressed: () {},
        );
        Widget continueButton = TextButton(
          child: Text("Continue"),
          onPressed: () {},
        );

        // set up the AlertDialog
        AlertDialog alert = AlertDialog(
          title: Text("AlertDialog"),
          content: Text(
              "Would you like to continue learning how to use Flutter alerts?"),
          actions: [
            cancelButton,
            continueButton,
          ],
        );

        // show the dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      }

      secimler = [];
      testveri.indexsifirla();
    }
    setState(() {
      bool dogruYanit = testveri.getSoruCevap();
      if (dogruYanit == input) {
        secimler.add(kdogruIconu);
      } else {
        secimler.add(kyanlisIconu);
      }
      testveri.digersoruyagec();
    });
  }

  test_veri testveri = test_veri();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 4,
              child: Center(
                  child: Padding(
                child: Text(
                  testveri.getSoruMetni(),
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                padding: EdgeInsets.all(25),
              )),
            ),
            Wrap(
              direction: Axis.horizontal,
              spacing: 5,
              runSpacing: 5,
              children: secimler,
              //alignment: WrapAlignment.end,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextButton(
                      child: Container(
                        width: 200,
                        height: 50,
                        color: Colors.red,
                        child: Icon(
                          Icons.thumb_down,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        butuonFonksiyonu(false);
                      },
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      child: Container(
                        width: 200,
                        height: 50,
                        color: Colors.green,
                        child: Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        butuonFonksiyonu(true);
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
