import 'package:flutter/material.dart';

class myContainer extends StatelessWidget {
  Color renk = Colors.white;

  myContainer({required Color renk}) {
    this.renk = renk;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: renk, borderRadius: BorderRadius.circular(25)),
      margin: EdgeInsets.all(10),
    );
  }
}
/*
SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 120,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(15),
              ),
              flex: 1,
            ),
            Expanded(
              flex: 1,
              child: Padding(
                child: Row(
                  children: [
                    Container(
                      height: 120,
                      width: 390,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                    )
                  ],
                ),
                padding: EdgeInsets.all(15),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
*/
