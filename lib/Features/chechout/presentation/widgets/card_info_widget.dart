import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_proj/core/utils/styles.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: (23 / 390) * MediaQuery.sizeOf(context).width,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: (23 / 390) * MediaQuery.sizeOf(context).width,
        vertical: (16 / 844) * MediaQuery.sizeOf(context).height,
      ),
      width: 305,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/mastercard.svg"),
          SizedBox(
            width: (23 / 390) * MediaQuery.sizeOf(context).width,
          ),
          Text.rich(
            TextSpan(
              children: [
                const TextSpan(
                    text: 'Credit Card ', style: Styles.style18SemiBold),
                TextSpan(
                  text: 'Mastercard **78 ',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.699999988079071),
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
