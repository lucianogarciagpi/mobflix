import 'package:flutter/material.dart';
import 'package:mobflix_challenge/components/components.dart';
import 'package:mobflix_challenge/data/video_provider.dart';

class ListViewCards extends StatefulWidget {
  const ListViewCards({Key? key}) : super(key: key);

  @override
  State<ListViewCards> createState() => _ListViewCardsState();
}

class _ListViewCardsState extends State<ListViewCards> {
  @override
  Widget build(BuildContext context) {
    return VideoProvider(
      child: Scaffold(
        body: ListView(
          // padding: const EdgeInsets.only(top: 10, bottom: 70),
          children: VideoProvider.of(context).videoList,
        ),
      ),
    );
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
