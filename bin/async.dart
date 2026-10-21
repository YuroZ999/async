void main() {
  print("Proses lain berjalan");
  hasil();
  print("Proses lain selesai...\n");
}

Future<void> hasil() async {
  print("\nMulai Masak Ayam Goreng");
  print("Mulai Masak Telor");

  print("\n=======================================\n");

  try {
    String hasilMasakAyam = await programMasakAsinkron("Ayam Goreng", 10);
    String hasilMasakTelor = await programMasakAsinkron("Telor", 20);

    print(hasilMasakAyam);
    print(hasilMasakTelor);
  } catch (e) {
    print(e);
  }
}

Future<String> programMasakAsinkron(String pesan, int detik) {
  return Future.delayed(Duration(seconds: detik), () {
    if (detik > 15) {
      throw Exception("Pesanan $pesan gosong");
    }

    return "Pesanan $pesan selesai dalam $detik detik";
  }); // Future.delayed
}