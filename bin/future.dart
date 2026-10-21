void main() {
    print("\nMulai Masak Ayam Goreng");
    programMasakAsinkron("Ayam Goreng", 10)
        .then((hasil) {
            print(hasil);
        })
        .catchError((error) {
            print(error);
        });

    print("Mulai Masak Telor");
    programMasakAsinkron("Telor", 20)
        .then((hasil) {
            print(hasil);
        })
        .catchError((error) {
            print(error);
        });

    print("\n=======================================\n");
    }

    Future<String> programMasakAsinkron(String pesan, int detik) {
    return Future.delayed(Duration(seconds: detik), () {
        if (detik > 15) {
        throw Exception("Pesanan $pesan gosong");
        }

        return "Pesanan $pesan selesai dalam $detik detik";
    });
}