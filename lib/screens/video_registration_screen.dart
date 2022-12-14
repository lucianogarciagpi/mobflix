import 'package:flutter/material.dart';
import 'package:mobflix_challenge/components/components.dart';

import '../components/sections/content_form.dart';

class VideoRegistrationScreen extends StatelessWidget {
  const VideoRegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 36, right: 36),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderForm(),
              ContentForm(),
            ],
          ),
        ),
      ),
    );
  }
}


