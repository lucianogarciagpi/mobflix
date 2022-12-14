import 'package:flutter/material.dart';
import 'package:mobflix_challenge/components/components.dart';

class ListViewCards extends StatelessWidget {
  const ListViewCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 28),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              CardCategory(
                category: 'Mobile',
                color: Color.fromRGBO(216, 45, 45, 1.0),
                image: 'assets/images/card1.png',
              ),
              CardCategory(
                category: 'Mobile',
                color: Color.fromRGBO(216, 45, 45, 1.0),
                image: 'assets/images/card2.png',
              ),
              CardCategory(
                category: 'Mobile',
                color: Color.fromRGBO(216, 45, 45, 1.0),
                image: 'assets/images/card3.png',
              ),
            ],
          ),
        ));
  }
}

class CardCategory extends StatelessWidget {
  final String category;
  final Color color;
  final String image;

  const CardCategory({
    Key? key,
    required this.category,
    required this.color,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ButtonCategory(
          label: category,
          color: color,
        ),
        const SizedBox(
          height: 8.0,
        ),
        Image.asset(
          image,
        ),
        const SizedBox(
          height: 18,
        ),
      ],
    );
  }
}
