# When
Library to calculate how many years, months, days, ... ago a given DateTime is.

## Usage
```dart
import 'package:whenwas/when.dart';

main() {
  int year = 2000;
  var date = DateTime(year);
  
  // x years ago
  print(When(date));
}
```
