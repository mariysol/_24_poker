import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class SignUppage extends StatelessWidget {
  const SignUppage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black,
            title: Image.asset('assets/images/logo.jpeg'),
            centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SignInButtonBuilder(
                text: 'Get going with Email',
                icon: Icons.email,
                onPressed: () {},
                backgroundColor: Colors.blueGrey[700]!,
                width: 220.0,
              ),
              const Divider(),
              SignInButton(
                Buttons.googleDark,
                onPressed: () {},
              ),
              const Divider(),
              SignInButton(
                Buttons.facebookNew,
                onPressed: () {},
              ),
              const Divider(),
              SignInButton(
                Buttons.apple,
                onPressed: () {},
              ),
            ],
          ),
        ));
  }
}
