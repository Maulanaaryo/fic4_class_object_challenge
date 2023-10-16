/*
1. Buatlah sebuah class bernama Nasabah dengan atribut nama, alamat, dan saldo.
2. Buatlah constructor parameterized pada class Nasabah dengan parameter nama dan alamat, dan memberikan nilai awal saldo adalah 0.
3. Buatlah method simpan pada class Nasabah yang menerima parameter jumlah dan menambahkan jumlah ke saldo.
4. Buatlah method ambil pada class Nasabah yang menerima parameter jumlah dan mengurangi jumlah dari saldo.
5. Buatlah objek nasabah1 dan nasabah2 dari class Nasabah dengan nilai atribut masing-masing.
6. Lakukan beberapa transaksi dengan method simpan dan ambil pada objek nasabah1 dan nasabah2.
7. Tampilkan nilai saldo terakhir dari objek nasabah1 dan nasabah2 menggunakan method print.
*/

class Nasabah {
  String nama;
  String alamat;
  double saldo;

  Nasabah({required this.nama, required this.alamat, this.saldo = 0});

  void simpan(double jumlah) {
    saldo += jumlah;
  }

  void ambil(double jumlah) {
    saldo -= jumlah;
  }
}

void main() {
  Nasabah nasabah1 = Nasabah(nama: 'John Doe', alamat: 'Jalan Merdeka No. 10', saldo: 100);
  Nasabah nasabah2 = Nasabah(nama: 'Jane Doe', alamat: 'Jalan Jenderal Sudirman No. 5');

  nasabah1.simpan(500);
  nasabah1.ambil(200);
  nasabah2.simpan(1000);
  nasabah2.ambil(300);

  print('Saldo terakhir Nasabah 1: ${nasabah1.saldo}');
  print('Saldo terakhir Nasabah 2: ${nasabah2.saldo}');
}
