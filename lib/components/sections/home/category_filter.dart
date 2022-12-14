import 'package:flutter/material.dart';
import 'package:mobflix_challenge/components/components.dart';
import 'package:mobflix_challenge/themes/theme_colors.dart';

class CategoryFilter extends StatelessWidget {
  const CategoryFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 35, top: 28, right: 35),
        child: Row(
          children: [
            ButtonCategory(
              label: 'Front End',
              color: ThemeColors.buttonCategoryCard['Front End'],
            ),
            ButtonCategory(
              label: 'Programação',
              color: ThemeColors.buttonCategoryCard['Programacao']
              ),
            ButtonCategory(
              label: 'Mobile',
              color: ThemeColors.buttonCategoryCard['Mobile'],
            ),
          ],
        ),
      ),
    );
  }
}
