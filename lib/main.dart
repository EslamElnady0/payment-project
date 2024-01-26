import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:payment_proj/Features/chechout/presentation/views/my_cart_view.dart';

main() {
  runApp(PaymentGateways());
}

class PaymentGateways extends StatelessWidget {
  const PaymentGateways({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme:
              AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark)),
      debugShowCheckedModeBanner: false,
      home: MyCartView(),
    );
  }
}
