import 'dart:io';

Future<void> main() async {
  print('Lütfen listeyi girerken virgülle ayirarak islem yapiniz');
  String girdi = stdin.readLineSync()!;
  List<int> liste = girdi.split(',').map((e) => int.parse(e)).toList();

  List<int> sonucListesi = await asenkronCarpma(liste);

  print('Değiştirilmiş Liste: $sonucListesi');
}

Future<List<int>> asenkronCarpma(List<int> liste) async {
  List<int> sonucListesi = [];

  for (int sayi in liste) {
    await Future.delayed(Duration(seconds: 1));
    sonucListesi.add(sayi * 2);
  }

  return sonucListesi;
}
