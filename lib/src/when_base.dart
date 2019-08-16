import 'package:whenwas/src/time.dart';
import 'package:whenwas/src/time_units.dart';

class When {
  final DateTime _dateTime;

  int _years        = 0;
  int _months       = 0;
  int _days         = 0;
  int _hours        = 0;
  int _minutes      = 0;
  int _seconds      = 0;
  int _milliSeconds = 0;

  static const int daysPerMonth = 30;
  static const int daysPerYear  = 365;

  When(this._dateTime) {
    Duration duration = DateTime.now().difference(_dateTime);
    _calc(duration);
  }

  _calc(Duration duration) {
    if (duration.isNegative || duration.inMilliseconds == 0) throw Exception('Expected a DateTime object pointing to the past!');

    _milliSeconds = duration.inMilliseconds;
    _seconds = duration.inSeconds;
    _minutes = duration.inMinutes;
    _hours = duration.inHours;
    _days = duration.inDays;

    if (_days >= daysPerYear) 
    {
      _years = (_days / daysPerYear).floor();
    }
    else if (_days >= daysPerMonth) 
    {
      _months = (_days / daysPerMonth).floor();      
    }    
  }

  Time toTime() {
    Map<String, int> items = {
      TimeUnit.YEAR: _years,
      TimeUnit.MONTH: _months,
      TimeUnit.DAY: _days,
      TimeUnit.HOUR: _hours,
      TimeUnit.MINUTE: _minutes,
      TimeUnit.SECOND: _seconds,
      TimeUnit.MILLISECOND: _milliSeconds 
    };

   for (String key in items.keys) {
     int value = items[key];
     if (value != 0) return Time(key, value);
   }

   throw Exception('Something went horribly wrong while converting to a Time object');
  }

  @override
  String toString() {
    Time time = toTime();
    return '${time.amount} ${time.unit}${time.amount == 1 ? "" : "s"} ago';
  }
}
