import 'package:flutter/material.dart';
import 'package:twenty4_poker/presentation/signup/components/regbody.dart';
import 'package:twenty4_poker/presentation/signup/components/reginput.dart';
import 'package:twenty4_poker/presentation/signup/components/regsubmit.dart';

class RegIs extends StatelessWidget {
  const RegIs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,

        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const RegBody(),
            const SizedBox(
              height: 10,
            ),
            const LogName(),
            const SizedBox(
              height: 30,
            ),
            ButtonExample(
              onPressed: () {
                Navigator.of(context).pop();
              },
              text: 'SENDEN',
              buttonColor: Colors.red,
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    ));
  }
}
