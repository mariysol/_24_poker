import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateTime now = DateTime.now();
String formattedDate = DateFormat('d. MMMM ' 'yy  H:m').format(now);

class SitGoBody extends StatelessWidget {
  const SitGoBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: Colors.white54,
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Expanded(
                  child: Center(
                      child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Text(
                                formattedDate,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Helvetica',
                                    fontSize: 24),
                              )
                            ],
                          ))))
            ])),
      ],
    );
  }
}
