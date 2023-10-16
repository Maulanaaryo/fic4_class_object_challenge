/*
1. Buatlah sebuah class bernama Mahasiswa dengan atribut nama, jurusan, dan angkatan.
2. Buatlah constructor default pada class Mahasiswa.
3. Buatlah constructor parameterized pada class Mahasiswa dengan parameter nama, jurusan, dan angkatan.
4. Buatlah constructor named pada class Mahasiswa dengan nama fromJson yang menerima parameter jsonString dan mengembalikan objek Mahasiswa yang diinisialisasi dengan nilai atribut dari jsonString.
*/

import 'dart:convert';

class Mahasiswa {
  String? nama;
  String? jurusan;
  int? angkatan;

  Mahasiswa({this.nama, this.jurusan, this.angkatan});

  Mahasiswa.fromJson(String jsonString) {
    Map<String, dynamic> data = json.decode(jsonString);
    nama = data['nama'];
    jurusan = data['jurusan'];
    angkatan = data['angkatan'];
  }
}

void main() {
  String jsonString =
      '{"nama": "Jane Doe", "jurusan": "Sistem Informasi", "angkatan": 2021}';
  Mahasiswa mahasiswa3 = Mahasiswa.fromJson(jsonString);
  print('${mahasiswa3.nama} ${mahasiswa3.jurusan} ${mahasiswa3.angkatan}');
}
