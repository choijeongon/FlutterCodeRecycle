import 'package:intl/intl.dart';

//int형 변수를 (ex: "₩1,000원") String 원화 단위로 변환
String currencyFormat(int price) {
  final formatCurrency =
      NumberFormat.simpleCurrency(locale: "ko_KR", decimalDigits: 0);

  return formatCurrency.format(price);
}
