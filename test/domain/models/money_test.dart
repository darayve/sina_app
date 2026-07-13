import 'package:test/test.dart';
import 'package:sina_app/domain/errors/currency_mismatch_error.dart';
import 'package:sina_app/domain/models/money.dart';

void main() {
  group('Money', () {
    test('should identify identical Money objects as equal', () {
      final money1 = const Money(1990, 'BRL');
      final money2 = const Money(1990, 'BRL');

      expect(money1, equals(money2));
    });

    test('should identify identical hash codes for equal Money objects', () {
      final money1 = const Money(1990, 'BRL');
      final money2 = const Money(1990, 'BRL');

      expect(money1.hashCode, equals(money2.hashCode));
    });

    test('should identify different Money objects as not equal', () {
      final money1 = const Money(1990, 'BRL');
      final money2 = const Money(2000, 'BRL');

      expect(money1, isNot(equals(money2)));
    });

    test('should identify different currencies as not equal', () {
      final money1 = const Money(1990, 'BRL');
      final money2 = const Money(1990, 'EUR');

      expect(money1, isNot(equals(money2)));
    });

    test('should add two Money objects with the same currency', () {
      final money1 = const Money(1990, 'BRL');
      final money2 = const Money(1000, 'BRL');

      final result = money1 + money2;

      expect(result, equals(const Money(2990, 'BRL')));
    });

    test(
      'should throw an error when adding Money objects with different currencies',
      () {
        final money1 = const Money(1990, 'BRL');
        final money2 = const Money(1000, 'EUR');

        expect(() => money1 + money2, throwsA(isA<CurrencyMismatchError>()));
      },
    );

    test('should allow negative values', () {
      final money1 = const Money(1990, 'BRL');
      final money2 = const Money(-1000, 'BRL');

      final result = money1 + money2;

      expect(result, equals(const Money(990, 'BRL')));
    });

    test('should allow negative results', () {
      final money1 = const Money(1000, 'BRL');
      final money2 = const Money(1990, 'BRL');

      final result = money1 - money2;

      expect(result, equals(const Money(-990, 'BRL')));
    });

    test(
      'should throw an error when subtracting Money objects with different currencies',
      () {
        final money1 = const Money(1990, 'BRL');
        final money2 = const Money(1000, 'EUR');

        expect(() => money1 - money2, throwsA(isA<CurrencyMismatchError>()));
      },
    );

    test('should return equivalent Money object when adding with zero', () {
      final money1 = const Money(1990, 'BRL');
      final money2 = const Money(0, 'BRL');

      final result = money1 + money2;

      expect(result, equals(money1));
    });
  });
}
