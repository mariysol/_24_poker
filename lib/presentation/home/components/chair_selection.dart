import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';
import 'package:twenty4_poker/utils/utils.dart';

class ChairSelect extends StatefulWidget {
  const ChairSelect({Key? key}) : super(key: key);

  @override
  State<ChairSelect> createState() => _ChairSelectState();
}

class _ChairSelectState extends State<ChairSelect> {
  var chair = List.filled(9, false);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleList(
        rotateMode: RotateMode.stopRotate,
        childrenPadding: 0,
        initialAngle: 46.2,
        outerRadius: 185,
        innerRadius: 100,
        origin: const Offset(0, 0),
        centerWidget: ClipOval(
          child: Image.asset('assets/images/table.png'),
        ),
        children: List.generate(
          (chairSlot.length),
          (index) {
            return InkWell(
              borderRadius: (index % 10 == 9
                        ? const BorderRadius.all(Radius.circular(30))
                        : const BorderRadius.all(Radius.circular(90))),
              onTap: (() {
                setState(() {
                  chair[index] = !chair[index];
                });
              }),
              child: Card(
                color: (index % 10 == 9 ? Colors.black : Colors.white54),
                shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.white24),
                    borderRadius: (index % 10 == 9
                        ? const BorderRadius.all(Radius.circular(30))
                        : const BorderRadius.all(Radius.circular(90)))),
                //margin: const EdgeInsets.symmetric(vertical: 30),
                child: GridTile(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(chairSlot.elementAt(index),
                            style: const TextStyle(color: Colors.red)),
                        const Text('FREI'),
                        Container(
                          child: (index % 10 == 9
                              ? null
                              : Icon(
                                  Icons.chair_outlined,
                                  color:
                                      chair[index] ? Colors.grey : Colors.red,
                                  size: 30,
                                )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
