import 'package:flutter/material.dart';
import 'package:payment_proj/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  final bool isLoading;
  const CustomButton(
      {this.onTap, super.key, required this.text, this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: 65,
          decoration: ShapeDecoration(
            color: const Color(0xFF34A853),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator()
                : Text(text,
                    textAlign: TextAlign.center, style: Styles.style22),
          )),
    );
  }
}
