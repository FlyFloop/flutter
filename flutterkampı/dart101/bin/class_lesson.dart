main(List<String> args) {
  HokkabazHuman hokkabazHuman = HokkabazHuman(1, 'kaşar faruk');
  HokkabazHuman hokkabazHuman2 = HokkabazHuman(1000, 'kaşar ahmet');

  if (hokkabazHuman.getMyMoney(10) == 10) {
    print('dızlama yok');
  } else {
    print('dızlama var -kaşar faruk');
  }
  print(hokkabazHuman2.totalMoney);
  print(hokkabazHuman2.getMyMoney(10));
  print(hokkabazHuman.getMyMoney(10));
}

extension HokkabazHumanExtension on HokkabazHuman {
  bool isHaveMoney() {
    if (fakemoney > 0) {
      if (character == Character.SAFE) {
        return true;
      }
    }
    return false;
  }
}

class HokkabazHuman extends IHuman {
  String name;
  int fakemoney;
  String? tckn; //olabilirde olmayabilirde
  late final double totalMoney;
  //late kavramı ilk vermeyebilir sonradan ekleyebilir anlamı sağlıyor
  late Character character;
  HokkabazHuman(this.fakemoney, this.name) : super() {
    if (fakemoney > 500) {
      totalMoney = fakemoney + fakemoney * 0.2;
      character = Character.SAFE;
    } else {
      character = Character.FAKE;
      totalMoney = 0;
    }
  }

  int getMyMoney(int money) {
    switch (character) {
      case Character.SAFE:
        return money;
        break;
      case Character.UNSAFE:
        return money + 5;
        fakemoney += 5;
        break;
      default:
        return 0;
    }
  }
}

enum Character { FAKE, UNSAFE, SAFE }

abstract class IHuman {
  int getMyMoney(int money);
}

class Ali implements IHuman {
  @override
  int getMyMoney(int money) {
    // TODO: implement getMyMoney
    throw UnimplementedError();
  }
}
