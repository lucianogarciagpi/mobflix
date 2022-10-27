import 'package:flutter/material.dart';
import 'package:mobflix_challenge/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = mobflixTheme();

    return MaterialApp(
      title: 'MobFlix',
      theme: mobflixTheme.dark(),
      home: MyHomePage(title: 'MOBFLIX'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        centerTitle: true,
        title: Text(
          widget.title,
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Banner
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 138,
                  width: 390,
                  child: Image.asset('assets/images/banner.png'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: GestureDetector(
                    onTap: () {
                      print("Você clicou assistir agora");
                    },
                    child: Container(
                      height: 42.5,
                      width: 128,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.blue,
                      ),
                      child: const Center(
                        child: Text(
                          'Assista agora',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Category Buttons
            SingleChildScrollView(
              padding: EdgeInsets.all(16),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _ButtonCategory('Logica de Programação', Colors.purpleAccent),
                  _ButtonCategory('Banco de Dados', Colors.orange),
                  _ButtonCategory('Front End', Colors.blue),
                  _ButtonCategory('Programação', Colors.green),
                  _ButtonCategory('Mobile', Colors.red),
                ],
              ),
            ),

            // Cards
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 16, right: 16),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  _CardMobile1(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: Container(
                          child: Center(
                            child: Text(
                              'Mobile',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          height: 32,
                          width: 94,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                            color: Colors.green,
                            child: Image.asset(
                              'assets/images/card2.png',
                              width: double.infinity,
                              fit: BoxFit.fill,
                            )),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: Container(
                          child: Center(
                            child: Text(
                              'Mobile',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          height: 32,
                          width: 94,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Container(
                            color: Colors.green,
                            child: Image.asset(
                              'assets/images/card3.png',
                              width: double.infinity,
                              fit: BoxFit.fill,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Center(
            child: Image.asset('assets/images/floatingButtonHome.png'),
          )),
    );
  }
}

// _ButtonCategory
class _ButtonCategory extends StatelessWidget {
  String label;
  Color? background;

  _ButtonCategory(this.label, this.background, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.only(
          left: 16,
          top: 5,
          right: 16,
          bottom: 5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: background,
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class _CardMobile1 extends StatelessWidget {
  const _CardMobile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TitleCard('mobile',Colors.red),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 32),
          child: Container(
              color: Colors.green,
              child: Image.asset(
                'assets/images/card1.png',
                width: double.infinity,
                fit: BoxFit.fill,
              )),
        ),
      ],
    );
  }
}

// Compoe o Card
class _TitleCard extends StatelessWidget {
  String label;
  Color? background;

  _TitleCard(this.label, this.background,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 94,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: background,
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
