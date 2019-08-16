class Time {
  final String _unit;
  final int _amount;

  Time(this._unit, this._amount);
  
  String get unit => _unit;
  int get amount => _amount;
}