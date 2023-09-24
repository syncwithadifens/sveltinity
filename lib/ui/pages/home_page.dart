import 'package:flutter/material.dart';
import 'package:sveltinity/calculate/calculate.dart';
import 'package:sveltinity/theme/styles.dart';
import 'package:sveltinity/ui/pages/result_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = 150;
  int weight = 60;
  int age = 22;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueLight,
      appBar: AppBar(
        title: const Text(
          'Svelnity Apps',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: blueLight,
        foregroundColor: white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              height: 180,
              margin: const EdgeInsets.only(top: 40, bottom: 20),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    grey,
                    blue,
                  ]),
                  borderRadius: BorderRadius.circular(18)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Choose Your Height:',
                      style: TextStyle(fontSize: 18, color: white),
                    ),
                  ),
                  Slider(
                    value: height,
                    min: 120,
                    max: 220,
                    label: height.toInt().toString(),
                    divisions: 100,
                    onChanged: (value) {
                      setState(() {
                        height = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: blueDark,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Your Weight',
                            style: TextStyle(color: white),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                color: white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                '$weight',
                                style: TextStyle(color: white, fontSize: 20),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: blueDark,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Text(
                            'Age',
                            style: TextStyle(color: white),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(
                                Icons.remove,
                                color: white,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(
                                '$age',
                                style: TextStyle(color: white, fontSize: 20),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                color: white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 40),
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {
                  Calculate hitung =
                      Calculate(height: height.toInt(), weight: weight);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        nilaiHasil: hitung.nilaiBMI(),
                        kategori: hitung.kategori(),
                        keterangan: hitung.keterangan(),
                        kategoriColor: hitung.kategoriColor(),
                        age: age,
                      ),
                    ),
                  );
                },
                icon: const Icon(Icons.calculate),
                label: const Text('Calculate'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
