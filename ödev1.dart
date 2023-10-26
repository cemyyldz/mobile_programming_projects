import 'dart:io';

void main() {
  hesapMakinesi();
}

void hesapMakinesi(){
  int? secim;
  int asilSecim;

  while(true){
    print("\n Yapacaginiz islemi seciniz:\n");
    print("1- Toplama\n2- Cikarma\n3- Carpma\n4- Bolme\n0- Cik");
    stdout.write("\n=> ");
    secim = int.tryParse(stdin.readLineSync()!);

    if(secim != null){
      asilSecim = secim;
    }
    else{
      asilSecim = -1;
    }

    if(asilSecim == 1){
      sayiAlma();
      toplama(number1: numberList[0], number2: numberList[1]);
    }
    else if(asilSecim == 2){

      sayiAlma();
      cikarma(number1: numberList[0], number2: numberList[1]);
    }
    else if(asilSecim == 3){
      sayiAlma();
      carpma(number1: numberList[0], number2: numberList[1]);
    }
    else if(asilSecim == 4){
      sayiAlma();
      bolme(number1: numberList[0], number2: numberList[1]);
    }
    else if(asilSecim == 0){
      break;
    }
    else{
      print("\nGecersiz girdiniz. Lutfen tekrar deneyiniz.");
    }

    numberList.clear();
  }
}

List<double> numberList = [];
var numberTest;

void sayiAlma(){
  for(int i = 1; i <= 2; i++){
    stdout.write("$i - bir sayi giriniz => ");
    numberTest = double.tryParse(stdin.readLineSync()!);

    if(numberTest == null){
      i--;
      print("Tekrar deneyiniz!");
      continue;
    }

    numberList.add(numberTest);
  }
}

void toplama({required double number1, required double number2}){
  print("\nSonuc:");
  print("$number1 + $number2 = ${number1 + number2}");
} 
void cikarma({required double number1, required double number2}){
  print("\nSonuc:");
  print("$number1 - $number2 = ${number1 - number2}");
}
void carpma({required double number1, required double number2}){
  print("\nSonuc:");
  print("$number1 * $number2 = ${number1 * number2}");
}
void bolme({required double number1, required double number2}){
  print("\nSonuc:");
  print("$number1 / $number2 = ${number1 / number2}");
}