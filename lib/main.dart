import 'package:flutter/material.dart';
import 'package:mobflix_challenge/screens/video_registration_screen.dart';
import 'package:mobflix_challenge/themes/my_theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MobFlixApp());
}

class MobFlixApp extends StatelessWidget {
  const MobFlixApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'MobFlix',
      theme: Mytheme,
      initialRoute: "/home",
      routes: {
        "/home": (context) => const MyHomePage(),
        "/videoRegistration": (context) => const VideoRegistrationScreen(),
      },
    );
  }
}