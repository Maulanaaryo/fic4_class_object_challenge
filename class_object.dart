/*
1. Buatlah sebuah class bernama Kucing dengan atribut nama dan umur.
2. Buatlah sebuah objek dari class Kucing dengan nama kucing1 dengan nilai atribut nama adalah "Meong" dan umur adalah 3 tahun.
3. Tampilkan nilai atribut dari objek kucing1 menggunakan method print.
*/

class Kucing {
  String nama;
  int umur;

  Kucing(this.nama, this.umur);

  void printKucing() {
    print('Nama kucing: $nama, Umur: $umur tahun');
  }
}

void main() {
  var kucing1 = Kucing("Meong", 3);
  kucing1.printKucing();
}
