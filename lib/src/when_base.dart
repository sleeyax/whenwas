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
    _calcFullDuration(duration);
  }

  _calcFullDuration(Duration duration) {
    if (duration.isNegative || duration.inMilliseconds == 0) throw Exception('Expected a DateTime object pointing to the past!');

    _seconds = duration.inSeconds;
    _milliSeconds = duration.inMilliseconds;
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

  @override
  String toString() {
    Map<String, int> items = {
      'year': _years,
      'month': _months,
      'day': _days,
      'hour': _hours,
      'minute': _minutes,
      'second': _seconds,
      'millisecond': _milliSeconds 
    };

   for (String key in items.keys) {
     int value = items[key];
     if (value != 0) return '$value $key${value == 1 ? "" : "s"} ago';
   }

   throw Exception('Something went horribly wrong while converting to string');
  }
}
