import 'package:flutter/material.dart';

class ButtonCategory extends StatelessWidget {
  final String label;
  final Color? color;

  const ButtonCategory({
    Key? key,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            top: 7,
            right: 24,
            bottom: 7,
          ),
          child: Text(
            label,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ),
    );
  }
}
