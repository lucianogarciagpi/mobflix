import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromRGBO(26, 26, 26, 1.0)),
      height: 86,
      child: const Padding(
        padding: EdgeInsets.only(top: 38),
        child: Center(
            child: Text(
          "MOBFLIX",
          style: TextStyle(
              fontSize: 32,
              fontFamily: 'Bebas neue',
              color: Color.fromRGBO(36, 120, 223, 1.0),
            ),
        )),
      ),
    );
  }
}
