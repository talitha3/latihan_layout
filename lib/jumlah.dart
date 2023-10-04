import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Latihan1());
}

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LamanUtama(),
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
    );
  }
}


class LamanUtama extends StatefulWidget {
  const LamanUtama({super.key});


  @override
  State<LamanUtama> createState() => _LamanUtamaState();
}


class _LamanUtamaState extends State<LamanUtama> {
  @override
  Widget build(BuildContext context) {
    TextEditingController conBil1 = TextEditingController();
    TextEditingController conBil2 = TextEditingController();
    TextEditingController conHasil = TextEditingController();


    return Scaffold(
        appBar: AppBar(
          title: Text("Kalkulator Dasar"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Wrap(
            runSpacing: 10,
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height * 0.006),
              Center(child: Text('OPERASI HITUNG DASAR ',
                style: TextStyle(
                    color: Colors.deepPurple,
                    fontSize: 30,
                    letterSpacing: 1.15,
                    fontWeight: FontWeight.bold),)),
              SizedBox (height: 3),
              Center (child: Text('Penjumlahan & Pengurangan',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    letterSpacing: 1.0),)),
              Column(
                  children: [
                    Center(child: Image.asset('asset/gambar2.png')), // <-- SEE HERE
                  ]
              ),


              TextField(
                controller: conBil1,
                decoration: InputDecoration(
                  label: Text("Bilangan 1"),
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: conBil2,
                decoration: InputDecoration(
                  label: Text("Bilangan 2"),
                  border: OutlineInputBorder(),
                ),
              ),
              TextField(
                controller: conHasil,
                decoration: InputDecoration(
                  label: Text("Bilangan Hasil"),
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {
                          double bilangan1 = double.parse(conBil1.text);
                          double bilangan2 = double.parse(conBil2.text);
                          double Hasil = bilangan1 + bilangan2;
                          conHasil.text = Hasil.toString();
                        },
                        child: Text("Tambah")), // ElevatedButton
                  ),
                  SizedBox(
                    width: 85,
                    child: ElevatedButton(
                        onPressed: () {
                          double bilangan1 = double.parse(conBil1.text);
                          double bilangan2 = double.parse(conBil2.text);
                          double Hasil = bilangan1 - bilangan2;
                          conHasil.text = Hasil.toString();
                        },
                        child: Text("Kurang")),
                  ),
                ],
              ),
            ],
          ),
        )); // Padding // Scaffold
  }
}
