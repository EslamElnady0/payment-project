import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_proj/Features/chechout/presentation/views/my_cart_view.dart';
import 'package:payment_proj/core/utils/api_keys.dart';

main() {
  Stripe.publishableKey = ApiKeys.publishablekey;
  runApp(const PaymentGateways());
}

class PaymentGateways extends StatelessWidget {
  const PaymentGateways({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme:
              const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark)),
      debugShowCheckedModeBanner: false,
      home: const MyCartView(),
    );
  }
}
