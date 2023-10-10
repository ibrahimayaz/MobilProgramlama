void main() {
  // print(Topla(5.6, 6));
  // print(Yaz());
  // print(Yaz2(b: 5, m: "Deneme"));

  // print(DogruMu(2, 2));

  //Listeler();

  //final ve const sabit değişken tanımlamak için kullanılır.
  //final'da başlangıçta değer atama zorunluluğu yoktur ancak
  //değer atandıktan sonra değiştirilemez !
  final y;
  y = 5;
  //const'da başlangıçta değer atama zorunluluğu vardır ve
  //değer atandıktan sonra değiştirilemez !
  const e = 5;
}

// İki zorunlu parametre ve dönüş tipi integer olacak
//PascalCase
//camelCase
double Topla(double sayi1, double sayi2) {
  return sayi1 + sayi2;
}

//Yaz adında bir fonksiyon olacak, varsayılan opsiyonel Bingöl Üniversitesi değerini
//parametre olarak alacak.
//Opsiyonel parametredir.
//parametre adlarına erişilemez, sırası değiştirilemez.
String Yaz([String m = "Bingöl Üniversitesi"]) {
  return m;
}

//Parametre adlarına erişilir.
//Parametrelerin sırası önemsiz hale geldi.
//Opsiyonel Parametredir.
String Yaz2({String m = "Bitlis Eren Üniversitesi", int b = 8}) {
  return m;
}

bool DogruMu(int b, [double a = 4]) {
  return a > 3 ? true : false;
}

void Listeler() {
  List a = ["Merhaba", "Dünya", 13, "1", 1];
  //add fonksiyonu listenin sonuna eleman ekler.
  a.add("Bingöl");
  //insert fonksiyonı belirtilen indekse eleman ekler.
  a.insert(2, false);
  //remove fonksiyonu belirtilen elemanı siler. (adına göre)
  a.remove("Dünya");
  //removeAt fonksiyonu belirtilen indexteki elemanı siler.
  a.removeAt(2);
  //Listedeki bir elemana erişmek için köşeli parantezler kullanılır.
  print(a[1]);

  /* Generic yapılar */

  List<String> b = ["Merhaba"];

  List<bool> c = [false, true];

  //içe içe list yapısı
  //List<dynamic> yapısındadır.
  List liste1 = [
    ["Merhaba", 5],
    6
  ];
  print(liste1[0][1]);

  print(liste1.length);
}
