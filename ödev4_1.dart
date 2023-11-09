import 'dart:io';

void main() async {
  print('İlk sayiyi lütfen giriniz: ');
  int sayi1 = int.parse(stdin.readLineSync()!);
  print("Girdiginiz sayi :$sayi1");

  print('İkinci tamsayiyi lütfen giriniz ');
  int sayi2 = int.parse(stdin.readLineSync()!);
  print("Girdiğiniz sayi: $sayi2");

  await Future.delayed(Duration(seconds: 3));

  int toplam = sayi1 + sayi2;
  print('Isleminizin sonucu: $toplam');
}
