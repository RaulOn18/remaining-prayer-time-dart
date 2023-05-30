import 'package:intl/intl.dart';

void main() {
  var format = DateFormat("HH:mm");
  var start = format.parse("09:30");
  var end = format.parse("${DateTime.now().hour}:${DateTime.now().minute}");

  if (start.isBefore(end)) {
    end = end.add(Duration(days: 1));
    Duration diff = end.difference(start).abs();
    final hours = diff.inHours;
    final minutes = diff.inMinutes % 60;
    print('$hours hours $minutes minutes');
  }
}
