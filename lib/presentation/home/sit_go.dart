import 'package:flutter/material.dart';
import 'package:twenty4_poker/presentation/home/components/chair_selection.dart';
import 'package:twenty4_poker/presentation/home/components/sitgo_body.dart';

//import '../SignUp/components/regsubmit.dart';

class SitGo extends StatelessWidget {
  const SitGo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Image.asset('assets/images/logo.jpeg'),
            centerTitle: true),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SitGoBody(),
                SizedBox(
                  height: 60,
                ),
                ChairSelect(),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ));
  }
}
