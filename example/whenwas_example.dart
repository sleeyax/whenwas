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
}
