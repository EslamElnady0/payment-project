import 'package:flutter/material.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/thank_you_view_body.dart';
import 'package:payment_proj/core/widgets/custom_appbar.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: '', context: context),
      body: ThankYouViewBody(),
    );
  }
}
