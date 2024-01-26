import 'package:flutter/material.dart';
import 'package:payment_proj/core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  final String title;
  final String value;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;
  const OrderInfoItem(
      {super.key,
      required this.value,
      required this.title,
      this.titleStyle,
      this.valueStyle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,
            textAlign: TextAlign.center,
            style: titleStyle ?? Styles.style18SemiBold),
        const Spacer(),
        Text(value,
            textAlign: TextAlign.center,
            style: valueStyle ?? Styles.style18SemiBold),
      ],
    );
  }
}
