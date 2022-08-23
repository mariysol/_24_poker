import 'package:twenty4_poker/models/sit.dart';

class PokerTable {
  final String id;
  final String text;
  final DateTime dateTime;
  final List<Sit> sit;

  PokerTable(this.id, this.text, this.dateTime, this.sit);

  /*static List<PokerTable> {
    return [
      PokerTable('df3', DateTime.now(), 'SIT&GO 1/2',) [
        Sit('P1', 1, false),
        Sit('P2', 2, false),
        Sit('P3', 3, false),
        Sit('P4', 4, false),
        Sit('P5', 5, false),
        Sit('P6', 6, false),
        Sit('P7', 7, false),
        Sit('P8', 8, false),
        Sit('P9', 9, false),
      ]),
    ];
  }*/
}
