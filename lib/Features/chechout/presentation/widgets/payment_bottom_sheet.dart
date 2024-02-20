import 'package:flutter/material.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/custom_button_bloc_consumer.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/payment_methods_listview.dart';

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
          CustomButtonBlocConsumer()
        ],
      ),
    );
  }
}
