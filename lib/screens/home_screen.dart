import 'package:flutter/material.dart';
import 'package:mobflix_challenge/components/components.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage(
    this.title, {
    Key? key,
  }) : super(key: key);
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
          children: const [
            // Banner
            BannerHome(),
            ScrollViewButtonCategory(),
            ScrollViewCardCategory(),
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
