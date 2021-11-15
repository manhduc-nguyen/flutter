import 'package:intl/intl.dart';

String formatAmount(double amount, {String locale = "en_US", String symbol = '\$'}) => amount >= 10000
    ? NumberFormat.compactCurrency(
        symbol: symbol,
        locale: locale,
      ).format(amount)
    : NumberFormat.currency(
        locale: locale,
        symbol: symbol,
      ).format(amount);