import 'package:flutter/material.dart';

class HeaderForm extends StatelessWidget {
  const HeaderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, bottom: 35),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Cadastre um video',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          GestureDetector(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(Icons.close),
                ),
              ),
              onTap: () => onButtonCloseVideoRegistrationScreen(context))
        ],
      ),
    );
  }
}

void onButtonCloseVideoRegistrationScreen(BuildContext context) {
  Navigator.of(context).pushReplacementNamed("/home");
}
