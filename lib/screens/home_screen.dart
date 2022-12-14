import 'package:flutter/material.dart';
import 'package:mobflix_challenge/components/components.dart';
import 'package:mobflix_challenge/screens/video_registration_screen.dart';
import 'package:mobflix_challenge/themes/theme_colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: const [
            Header(),
            BannerHome(),
            CategoryFilter(),
            ListViewCards(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ThemeColors.FloatingActionButton,
        child: Image.asset(
          'assets/images/img_icon_add.png',
          fit: BoxFit.cover,
        ),
        onPressed: () {
          onButtonVideoRegistrationForm(context);
        },
      ),
    );
  }
}

void onButtonVideoRegistrationForm(BuildContext context) {
  Navigator.of(context).pushReplacementNamed("/videoRegistration");
}
