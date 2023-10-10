void main() {
  //Sözlük Koleksiyonu
  //Sozluk();

  //Karar yapıları
  // KararYapilari();

  /// DÖNGÜLER
  ///
  // String adSoyad = "İbrahim AYAZ";
  // for (var i = 1; i < 20; i++) {
  //   print("${i} - $adSoyad");
  // }

  // for (int i = 0; i < 5; i += 2) {
  //   if (i % 2 == 0) {
  //     print("Bingöl Üniveristesi");
  //   }
  // }

  //FOR IN
  // List meyveler = ["Elma", "Armut", "Kavun", "Karpuz"];
  // for (var i in meyveler) {
  //   print(i);
  // }
  // //FOR
  // for (var i = 0; i < meyveler.length; i++) {
  //   print(meyveler[i]);
  // }

  // // FOREACH
  // var Meyveler = ["Elma", "Armut", "Kiraz"];
  // Meyveler.forEach((i) => print("${i}"));sayi
  sayilar();
}

void sayilar() {
  List tek = [];
  List cift = [];
  List sayilar = [0, 2, 1, 5, 7, 9, 4];
  for (var i in sayilar) {
    if (i % 2 == 0) {
      cift.add(i);
    } else {
      tek.add(i);
    }
  }
  print("tek sayilar: $tek");
  print("cift sayilar: $cift");
}

void Sozluk() {
  Map sozluk = {"black": "Siyah", "yellow": "Sarı", 2: "two", true: "doğru"};
  //Sözlüklere keyleri ile erişilir.
  // print(sozluk["black"]);
  //sözlükteki bir elemanın değeri değiştirir.
  sozluk["black"] = "Kara";

  Map<dynamic, dynamic> sayilarSozlugu = {"bir": 1, "iki": 2, true: 3};

  //yeni bir eleman ekleme işlemi
  sayilarSozlugu[8] = "sekiz";
  sayilarSozlugu["Merhaba"] = "Selam";
  print(sayilarSozlugu);
}

void KararYapilari() {
  int yas = 19;
  if (yas > 19) {
    print("Yaş 19'dan büyüktür.");
  } else if (yas == 19) {
    print("Yaş 19'a eşittir.");
  } else {
    print("Yaş 19'dan küçük veya eşittir..");
  }

  List diller = ["Python", "C#", "Java", "Dart"];
  var dilSayisi = diller.length;
  if (dilSayisi > 5) {
    print("Diller listesinde 5'den dil vardır.");
  } else if (dilSayisi > 4) {
    diller.add("Kotlin");
    print("Diller listesinde 4'den fazla vardır.");
  } else if (dilSayisi > 5) {
    diller.add("Swift");
    print("Diller listesinde 5'den fazla dil vardır.");
  } else {
    print("Diller listesinde ${diller.length} dil vardır.");
  }
}
