import 'package:flutter/material.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/order_info_item.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/payment_methods_listview.dart';
import 'package:payment_proj/core/utils/styles.dart';
import 'package:payment_proj/core/widgets/custom_appbar.dart';
import 'package:payment_proj/core/widgets/custom_button.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "My Cart", context: context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(children: [
          Expanded(
            child: Image.asset(
              "assets/images/Basket.png",
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const OrderInfoItem(value: r"$42.97", title: "Order Subtotal"),
          const OrderInfoItem(value: r"$0", title: "Discount"),
          const OrderInfoItem(value: r"$8", title: "Shipping"),
          const SizedBox(
            height: 17,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(thickness: 1),
          ),
          const SizedBox(
            height: 15,
          ),
          const OrderInfoItem(
            value: r"$50.97",
            title: "Total",
            titleStyle: Styles.style24,
            valueStyle: Styles.style24,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButton(
            text: 'Complete Payment',
            onTap: () {
              // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              //   return const PaymentDetailView();
              // }));
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const PaymentBottomSheet();
                  });
            },
          ),
          const SizedBox(
            height: 12,
          )
        ]),
      ),
    );
  }
}

class PaymentBottomSheet extends StatelessWidget {
  const PaymentBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 16,
          ),
          PaymentMethodsListView(),
          SizedBox(
            height: 32,
          ),
          CustomButton(text: "Pay")
        ],
      ),
    );
  }
}
