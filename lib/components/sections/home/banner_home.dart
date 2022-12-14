import 'package:flutter/material.dart';
import 'package:mobflix_challenge/components/components.dart';

class BannerHome extends StatelessWidget {
  const BannerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: 138,
          width: double.infinity,
          child: Image.asset(
            'assets/images/banner.png',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 74.54),
          child: ButtonBannerHome(
            'Assista agora',
            Colors.blue,
          ),
        ),
      ],
    );
  }
}

class ButtonBannerHome extends StatelessWidget {
  String label;
  Color? color;

  ButtonBannerHome(
    this.label,
    this.color, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          label,
          style: const TextStyle(
            fontFamily: 'Roboto',
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
