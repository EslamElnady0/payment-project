import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/card_info_widget.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/order_info_item.dart';
import 'package:payment_proj/core/utils/styles.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        color: const Color(0xFFefeded),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Column(children: [
        SizedBox(height: (66 / 844) * MediaQuery.sizeOf(context).height),
        const Text('Thank you!',
            textAlign: TextAlign.center, style: Styles.style25),
        Text('Your transaction was successful',
            textAlign: TextAlign.center, style: Styles.style20),
        SizedBox(height: (42 / 844) * MediaQuery.sizeOf(context).height),
        Padding(
          padding: EdgeInsets.only(
              bottom: (20 / 844) * MediaQuery.sizeOf(context).height,
              left: (22 / 390) * MediaQuery.sizeOf(context).width,
              right: (22 / 390) * MediaQuery.sizeOf(context).width),
          child: const OrderInfoItem(
            value: "01/24/2023",
            title: "Date",
            valueStyle: Styles.style18Bold,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              bottom: (20 / 844) * MediaQuery.sizeOf(context).height,
              left: (22 / 390) * MediaQuery.sizeOf(context).width,
              right: (22 / 390) * MediaQuery.sizeOf(context).width),
          child: const OrderInfoItem(
            value: "10:15 AM",
            title: "Time",
            valueStyle: Styles.style18Bold,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(
                bottom: (20 / 844) * MediaQuery.sizeOf(context).height,
                left: (22 / 390) * MediaQuery.sizeOf(context).width,
                right: (22 / 390) * MediaQuery.sizeOf(context).width),
            child: const OrderInfoItem(
              value: "Sam Louis",
              title: "To",
              valueStyle: Styles.style18Bold,
            )),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: (15 / 390) * MediaQuery.sizeOf(context).width,
          ),
          child: const Divider(
            thickness: 2,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: (24 / 844) * MediaQuery.sizeOf(context).height,
              bottom: (30 / 844) * MediaQuery.sizeOf(context).height,
              left: (22 / 390) * MediaQuery.sizeOf(context).width,
              right: (22 / 390) * MediaQuery.sizeOf(context).width),
          child: const OrderInfoItem(
            value: r"$50.97",
            title: "Total",
            valueStyle: Styles.style24,
            titleStyle: Styles.style24,
          ),
        ),
        const CardInfoWidget(),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: (22 / 390) * MediaQuery.sizeOf(context).width,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                "assets/images/barcode.svg",
                height: (70 / 844) * MediaQuery.sizeOf(context).height,
              ),
              Container(
                width: 113,
                height: 58,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side:
                        const BorderSide(width: 1.50, color: Color(0xFF34A853)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text('PAID',
                      textAlign: TextAlign.center,
                      style: Styles.style25
                          .copyWith(color: const Color(0xff34A853))),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: (58 / 844) * MediaQuery.sizeOf(context).height,
        )
      ]),
    );
  }
}
