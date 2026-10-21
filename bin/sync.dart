import 'dart:io';

void main() {
  sinkronProgram();
}

void sinkronProgram() {
  // buat kopi dalam 3 detik
  print('Membuat kopi...');
  sleep(Duration(seconds: 3));

  // membuat roti 8 detik
  print('Membuat roti...');
  sleep(Duration(seconds: 8));

  // merebus telur 5 detik
  print('merebus telur...');
  sleep(Duration(seconds: 5));
}
