import 'package:flutter/material.dart';
import 'package:payment_proj/core/widgets/custom_appbar.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/payment_details_view_body.dart';

class PaymentDetailView extends StatelessWidget {
  const PaymentDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "Payment Details", context: context),
      body: const PaymentDetailsViewBody(),
    );
  }
}
