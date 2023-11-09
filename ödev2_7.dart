import 'dart:io';

class AtaturkQuiz {
  List<String> sorular = [
    "1. Atatürk'ün doğum yili nedir? (Cevap: 1881)",
    "2. Atatürk'ün doğum yeri neresidir? (Cevap: Selanik)",
    "3. Atatürk'ün annesinin adi nedir? (Cevap: Zübeyde Hanim)",
    "4. Atatürk'ün babasinin adi nedir? (Cevap: Ali Riza Efendi)",
    "5. Atatürk'ün askeri akademiyi bitirme yili nedir? (Cevap: 1905)",
    "6. Atatürk'ün Samsun'a çikiş tarihi nedir? (Cevap: 19 Mayis 1919)",
    "7. Atatürk'ün nüfusa kaydi hangi ad ile yapilir? (Cevap: Mustafa Kemal)",
    "8. Atatürk, Türk Dil Kurumu'nu hangi yil kurmuştur? (Cevap: 1932)",
    "9. Atatürk'ün ölüm yili nedir? (Cevap: 1938)",
    "10. Atatürk'ün kabrinin bulunduğu yer neresidir? (Cevap: Anitkabir)",
    "11. Atatürk'ün soyadi kanunu ne zaman çikarilmiştir? (Cevap: 1934)",
    "12. Atatürk'ün kurduğu gençlik örgütü hangisidir? (Cevap: Türkiye Gençlik Teşkilati)",
    "13. Atatürk'ün hangi savaşta Başkomutan unvanini aldi? (Cevap: Büyük Taarruz)",
    "14. Atatürk'ün ilk hükümeti ne zaman kuruldu? (Cevap: 1920)",
    "15. Atatürk'ün silah arkadaşi kimdir? (Cevap: İsmet İnönü)",
    "16. Atatürk'ün ölüm günü nedir? (Cevap: 10 Kasim)",
    "17. Atatürk'ün resmi öğrenim yeri neresidir? (Cevap: Harp Okulu)",
    "18. Atatürk'ün vefat ettiği şehir neresidir? (Cevap: İstanbul)",
    "19. Atatürk'ün hangi savaş sonunda Lozan Antlaşmasi'ni imzaladi? (Cevap: Türk Kurtuluş Savaşi)",
    "20. Atatürk'ün Türk halkina armağan ettiği bayram nedir? (Cevap: 23 Nisan Ulusal Egemenlik ve Çocuk Bayrami)",
  ];

  List<String> cevaplar = [
    "1881",
    "Selanik",
    "Zübeyde Hanim",
    "Ali Riza Efendi",
    "1905",
    "19 Mayis 1919",
    "Mustafa Kemal",
    "1932",
    "1938",
    "Anitkabir",
    "1934",
    "Türkiye Gençlik Teşkilati",
    "Büyük Taarruz",
    "1920",
    "İsmet İnönü",
    "10 Kasim",
    "Harp Okulu",
    "İstanbul",
    "Türk Kurtuluş Savaşi",
    "23 Nisan Ulusal Egemenlik ve Çocuk Bayrami",
  ];

  int dogruCevaplar = 0;
  int soruNumarasi = 0;

  void startQuiz() {
    print("Atatürk Bilgi Yarişmasi\n");

    for (soruNumarasi = 0; soruNumarasi < sorular.length; soruNumarasi++) {
      print(sorular[soruNumarasi]);
      String? userAnswer = stdin.readLineSync();
      checkAnswer(userAnswer!);
    }

    showResults();
  }

  void checkAnswer(String userAnswer) {
    if (soruNumarasi < cevaplar.length &&
        userAnswer.toLowerCase() == cevaplar[soruNumarasi].toLowerCase()) {
      print("Doğru!\n");
      dogruCevaplar++;
    } else {
      print("Yanliş. Doğru cevap: ${cevaplar[soruNumarasi]}\n");
    }
  }

  void showResults() {
    print("Toplam doğru cevap sayisi: $dogruCevaplar / ${sorular.length}");
    if (dogruCevaplar == sorular.length) {
      print("Tebrikler, Atatürk hakkinda mükemmel bir bilgiye sahipsiniz!");
    } else {
      print("Daha fazla bilgi edinmek için çalişmaya devam edin!");
    }
  }
}

void main() {
  AtaturkQuiz quiz = AtaturkQuiz();
  quiz.startQuiz();
}
