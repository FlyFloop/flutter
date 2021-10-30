main(List<String> args) {
  int number1 = 5;
  String message = 'hi there!';
  List<int> moneys = [5, 10, 15, 20];
  for (var item in moneys) {
    if (item == 5) {
      print('avarage');
    } else if (item > 5) {
      print('rich');
    } else {
      print('poor');
    }
  }
}
