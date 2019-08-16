# Whenwas
Library to calculate how many years, months, days, ... ago a given DateTime is.

## Usage
```dart
import 'package:whenwas/whenwas.dart';

main() {
  int year = 2000;
  var date = DateTime(year);
  
  // x years ago
  print(When(date));

  // in case you want a custom format:
  var time = When(date).toTime();
  if (time.unit == TimeUnit.YEAR) {
    // x years ago in Spanish
    print('Hace ${time.amount} años')
  }
}
```
