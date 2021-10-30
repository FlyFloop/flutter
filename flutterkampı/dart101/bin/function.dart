main(List<String> args) {
  void calculateUser(int item, {int maxmoney = 5}) {
    //maxmoney versin ama vermeyedebilir
    //eğer kullanıcı bir değer vermez ise default olarak 5 atanıcak
    if (item == 5) {
      print('avarage');
    } else if (item > 5) {
      print('rich');
    } else {
      print('poor');
    }
  }

  List<int> calculateUserTwo() {
    return [];
  }

  String hello(int data) {
    return data % 2 == 0 ? 'çift' : 'tek';
  }
}

/*


import 'package:dart101/dart101.dart';

main(List<String> args) {
//  print('alper yorgun');
  int number1 = 5;
  String message = 'hi there!';
  List<int> moneys = [5, 10, 15, 20];
  List<String> moneysString = [];
  double tooMany = 150.555;
  //bool isMoneyRemoveCompleted = moneys.remove(5);
  //print(isMoneyRemoveCompleted);
  List<String> itemsMoney = moneys.map((e) {
    return e > 5 ? '5ten büyük' : '5ten küçük';
  }).toList();
  //moneys.firstWhere((element) => element > 10);
  //print(itemsMoney);
  //int moneyLength = moneys.length;
  // print(moneyLength);
  int moneyLength2(List item) => item.length;
  print(moneyLength2(moneys));
  moneys.remove(5);
  print(moneyLength2(moneys));
}

*/
