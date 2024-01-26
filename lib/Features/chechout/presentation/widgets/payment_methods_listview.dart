import 'package:flutter/material.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/payment_method_item.dart';

class PaymentMethodsListView extends StatefulWidget {
  const PaymentMethodsListView({
    super.key,
  });

  @override
  State<PaymentMethodsListView> createState() => _PaymentMethodsListViewState();
}

class _PaymentMethodsListViewState extends State<PaymentMethodsListView> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    List<String> paymentMethodsItems = [
      "assets/images/card.svg",
      "assets/images/paypal.svg"
    ];
    return SizedBox(
      height: 62,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  activeIndex = index;
                });
              },
              child: PaymentMethodItem(
                  isActive: activeIndex == index,
                  image: paymentMethodsItems[index]),
            ),
          );
        },
      ),
    );
  }
}
