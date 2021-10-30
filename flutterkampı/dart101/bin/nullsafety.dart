main(List<String> args) {
  int? money;
  int money2 = 1;
  void getMyMoney(int password) {}
  try {
    getMyMoney(money!);
  } catch (e) {
    print(e.toString());
  }

//null safety
  //getMyMoney(money); //null safety yüzünden yazdırmıyor
  //sakın null variable yanına ! koyma null olmadığına güvence veriyoruz
  if (money != null) {
    money2 += money;
    getMyMoney(money); //null check yapıldı  sorun yok

  }
}
