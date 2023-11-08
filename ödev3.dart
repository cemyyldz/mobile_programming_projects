import 'dart:math';

int generateRandom() {
  Random rastgele = Random();
  int rastgeleSayi = rastgele.nextInt(2);

  if (rastgeleSayi == 0) {
    return 100;
  } else {
    return 0;
  }
}

void main() {
  int durum = generateRandom();
  print('Durum: $durum');
}
