import 'package:sina_app/domain/errors/currency_mismatch_error.dart';

class Money {
  final int cents;
  final String currency;

  const Money(this.cents, this.currency);

  Money operator +(Money other) {
    if (currency != other.currency) {
      throw CurrencyMismatchError('Cannot add Money with different currencies');
    }

    return Money(cents + other.cents, currency);
  }

  Money operator -(Money other) {
    if (currency != other.currency) {
      throw CurrencyMismatchError(
        'Cannot subtract Money with different currencies',
      );
    }
    return Money(cents - other.cents, currency);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Money && cents == other.cents && currency == other.currency;
  }

  @override
  String toString() => 'Money($cents, $currency)';

  @override
  int get hashCode => Object.hash(cents, currency);
}
