import 'package:flutter/material.dart';
import 'package:mobflix_challenge/components/home/card_mobile1.dart';
import 'package:mobflix_challenge/theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const MobFlixApp());
}

class MobFlixApp extends StatelessWidget {
  const MobFlixApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = mobflixTheme();

    return MaterialApp(
      title: 'MobFlix',
      theme: mobflixTheme.dark(),
      home: MyHomePage('MOBFLIX'),
    );
  }
}

