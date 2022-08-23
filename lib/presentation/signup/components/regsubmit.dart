import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color buttonColor;

  const ButtonExample(
      {Key? key,
      required this.onPressed,
      required this.text,
      required this.buttonColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onPressed(),
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8), color: buttonColor),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
