import 'package:flutter/material.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/custom_check_icon.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/custom_dashed_line.dart';
import 'package:payment_proj/Features/chechout/presentation/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: (20 / 390) * MediaQuery.sizeOf(context).width,
        right: (20 / 390) * MediaQuery.sizeOf(context).width,
        bottom: (27 / 844) * MediaQuery.sizeOf(context).height,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCard(),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.225,
              left: (30 / 390) * MediaQuery.sizeOf(context).width,
              right: (30 / 390) * MediaQuery.sizeOf(context).width,
              child: const CustomDashedLine()),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              left: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          Positioned(
              bottom: MediaQuery.sizeOf(context).height * 0.2,
              right: -20,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              )),
          const Positioned(
              left: 0, right: 0, top: -50, child: CustomCheckIcon())
        ],
      ),
    );
  }
}
