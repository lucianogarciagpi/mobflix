import 'package:flutter/material.dart';
import 'package:mobflix_challenge/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MobFlix',
      theme: tema,
      home: const MyHomePage(title: 'MOBFLIX'),
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
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
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
                      child: Center(
                        child: Text(
                          'Assista agora',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      height: 42.5,
                      width: 128,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(16),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      child: Center(
                        child: Text(
                          'Front End',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      height: 32,
                      width: 128,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      child: Center(
                        child: Text(
                          'Programação',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      height: 32,
                      width: 128,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      child: Center(
                        child: Text(
                          'Mobile',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      height: 32,
                      width: 128,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 16, right: 16),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            'Mobile',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        height: 32,
                        width: 128,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:16.0),
                        child: Container(
                            color: Colors.green,
                            child: Image.asset('assets/images/card1.png',
                              width: double.infinity,
                              fit: BoxFit.fill,)
                        ),
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
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          height: 32,
                          width: 128,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:16.0),
                        child: Container(
                            color: Colors.green,
                            child: Image.asset('assets/images/card2.png',
                              width: double.infinity,
                              fit: BoxFit.fill,)
                        ),
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
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          height: 32,
                          width: 128,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:16.0),
                        child: Container(
                            color: Colors.green,
                            child: Image.asset('assets/images/card3.png',
                              width: double.infinity,
                              fit: BoxFit.fill,)
                        ),
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
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}


