import 'package:bilgitestiuygulamasi/soru.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class test_veri {
  int _soruindex = 0;
  //değişkenin altına _ koyarak onu private yapıyor
  List<Soru> _sorubankasi = [
    Soru('Titanic gelmiş geçmiş en büyük gemidir.', false),
    Soru('Dünyadaki tavuk sayısı insan sayısından fazladır.', true),
    Soru('Kelebeklerin ömrü bir gündür.', false),
    Soru('Dünya düzdür.', false),
    Soru('Kaju fıstığı aslında bir meyvenin sapıdır.', true),
    Soru('Fatih Sultan Mehmet hiç patates yememiştir.', true),
  ];
  String getSoruMetni() {
    return _sorubankasi[_soruindex].soru;
  }

  bool getSoruCevap() {
    return _sorubankasi[_soruindex].cevap;
  }

  void digersoruyagec() {
    if (_soruindex > _sorubankasi.length) {
      print('sorular bitti');
    } else {
      _soruindex++;
    }
  }

  bool testbittimi() {
    if (_soruindex + 1 > _sorubankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void indexsifirla() {
    _soruindex = 0;
  }

  //getter setter yapıldı
}
