import 'package:flutter/material.dart';
import 'package:sveltinity/theme/styles.dart';

class ResultPage extends StatelessWidget {
  final String nilaiHasil;
  final String kategori;
  final Color kategoriColor;
  final String keterangan;
  final int age;
  const ResultPage(
      {super.key,
      required this.nilaiHasil,
      required this.kategori,
      required this.keterangan,
      required this.kategoriColor,
      required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueLight,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.pop(context),
        label: const Text('Try Another'),
      ),
      appBar: AppBar(
        title: const Text('Your BMI'),
        backgroundColor: blueLight,
        foregroundColor: white,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Text(
                'Result:',
                style: TextStyle(
                    fontSize: 38, fontWeight: FontWeight.bold, color: white),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsetsDirectional.only(
                  start: 18, end: 18, bottom: 100, top: 10),
              decoration: BoxDecoration(
                color: blueDark,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 60, bottom: 20),
                    child: Text(
                      'Your BMI in $age years old:',
                      style: TextStyle(fontSize: 14, color: grey),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      kategori,
                      style: TextStyle(
                          fontSize: 26,
                          color: kategoriColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    nilaiHasil,
                    style: TextStyle(
                        fontSize: 80,
                        color: white,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      keterangan,
                      style: TextStyle(fontSize: 16, color: grey),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
