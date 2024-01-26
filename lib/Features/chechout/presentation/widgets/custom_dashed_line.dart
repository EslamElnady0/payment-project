import 'package:flutter/material.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
      30,
      (index) => Expanded(
        child: Container(
          margin: const EdgeInsets.only(right: 4),
          height: 2,
          decoration: const ShapeDecoration(
            color: Color(0xffB8B8B8),
            shape: RoundedRectangleBorder(),
          ),
        ),
      ),
    ));
  }
}
