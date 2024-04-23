import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Mahasiswa {
  final String nama;
  final String nim;
  final String prodi;
  final String alamat;
  final String email;
  final String noHp;
  final String foto;

  Mahasiswa({
    required this.nama,
    required this.nim,
    required this.prodi,
    required this.alamat,
    required this.email,
    required this.noHp,
    required this.foto,
  });
}

class MyApp extends StatelessWidget {
  final List<Mahasiswa> daftarMahasiswa = [
    Mahasiswa(
      nama: 'Amin Suratun Khasanah',
      nim: 'STI202102368',
      prodi: 'Teknik Informatika',
      alamat: 'Purbalingga',
      email: 'suratunkhasanah1125.05@gmail.com',
      noHp: '085802627691',
      foto: 'img/aku.jpg', // Ubah path foto sesuai dengan struktur direktori proyek Anda
    ),
    // Tambahkan data mahasiswa lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Biodata Mahasiswa'),
        ),
        body: ListView.builder(
          itemCount: daftarMahasiswa.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        daftarMahasiswa[index].foto,
                        fit: BoxFit.cover,
                        height: 300, // Ubah ukuran foto menjadi lebih besar
                        width: double.infinity,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      daftarMahasiswa[index].nama,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text('NIM: ${daftarMahasiswa[index].nim}'),
                    Text('Prodi: ${daftarMahasiswa[index].prodi}'),
                    Text('Alamat: ${daftarMahasiswa[index].alamat}'),
                    Text('Email: ${daftarMahasiswa[index].email}'),
                    Text('No HP: ${daftarMahasiswa[index].noHp}'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
