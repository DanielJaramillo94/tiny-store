import 'package:intl/intl.dart';

String toCurrencyFormat(num? value) {
  return NumberFormat.currency(symbol: '\$', decimalDigits: 0)
      .format(value)
      .trim();
}
