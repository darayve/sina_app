class CurrencyMismatchError extends Error {
  final String message;

  CurrencyMismatchError(this.message);

  @override
  String toString() => 'CurrencyMismatchError: $message';
}
