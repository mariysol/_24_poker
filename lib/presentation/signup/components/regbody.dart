import 'package:flutter/material.dart';

class RegBody extends StatelessWidget {
  const RegBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;

    //bei MediaQuery darf kein Expanded sein, sonst ergibt sich einen loop

    return Row(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(top: 40, left: 8),
          //height: 80,
          //width: 160,
          child: const Text(
            'Registrieren',
            style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontFamily: 'Helvetica',
                fontSize: 24),
          ),
        ),
      ],
    );
  }
}
