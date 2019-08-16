import 'package:whenwas/whenwas.dart';

main() {
  var dateInThePast = DateTime.now().subtract(
    Duration(
      milliseconds: 2,
      seconds: 15,
      minutes: 27,
      hours: 4,
      days: 29
    )
  );

  // 29 days ago
  print(When(dateInThePast));

  // custom format:
  dateInThePast = dateInThePast.subtract(Duration(days: 365 * 4));
  var time = When(dateInThePast).toTime();
  if (time.unit == TimeUnit.YEAR) {
    // 4 super long years ago
    print('${time.amount} super long ${time.unit}s ago');
  }
}
