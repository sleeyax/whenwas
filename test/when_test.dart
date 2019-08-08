import 'package:when/when.dart';
import 'package:test/test.dart';

void main() {
  group('Test When class', () {
    test('Should throw exception when DateTime is now', () {
      expect(() => When(DateTime.now()).toString(), throwsException);
    });

    test('Should throw exception when DateTime is in the future', () {
      expect(() => When(DateTime.now().add(Duration(milliseconds: 1))).toString(), throwsException);
    });

    test('Should return 1 year', () {
      expect(When(DateTime.now().subtract(Duration(days: 365))).toString(), '1 year ago');
    });

    test('Should return 2 years', () {
      expect(When(DateTime.now().subtract(Duration(days: 365 * 2))).toString(), '2 years ago');
    });

    test('Should return 1 month', () {
      expect(When(DateTime.now().subtract(Duration(days: 30))).toString(), '1 month ago');
    });

    test('Should return 2 months', () {
      expect(When(DateTime.now().subtract(Duration(days: 30 * 2))).toString(), '2 months ago');
    });

    test('Should return 1 day', () {
      expect(When(DateTime.now().subtract(Duration(days: 1))).toString(), '1 day ago');
    });

    test('Should return 2 days', () {
      expect(When(DateTime.now().subtract(Duration(days: 2))).toString(), '2 days ago');
    });

    test('Should return 1 hour', () {
      expect(When(DateTime.now().subtract(Duration(hours: 1))).toString(), '1 hour ago');
    });

    test('Should return 2 hours', () {
      expect(When(DateTime.now().subtract(Duration(hours: 2))).toString(), '2 hours ago');
    });

    test('Should return 1 minute', () {
      expect(When(DateTime.now().subtract(Duration(minutes: 1))).toString(), '1 minute ago');
    });

    test('Should return 2 minutes', () {
      expect(When(DateTime.now().subtract(Duration(minutes: 2))).toString(), '2 minutes ago');
    });

    test('Should return 1 second', () {
      expect(When(DateTime.now().subtract(Duration(seconds: 1))).toString(), '1 second ago');
    });

    test('Should return 2 seconds', () {
      expect(When(DateTime.now().subtract(Duration(seconds: 2))).toString(), '2 seconds ago');
    });

    test('Should return 1 millisecond', () {
      expect(When(DateTime.now().subtract(Duration(milliseconds: 1))).toString(), '1 millisecond ago');
    });

    test('Should return 2 milliseconds', () {
      expect(When(DateTime.now().subtract(Duration(milliseconds: 2))).toString(), '2 milliseconds ago');
    });
  });
}
