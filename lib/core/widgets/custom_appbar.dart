import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_proj/core/utils/styles.dart';

AppBar buildAppBar(
    {required final String title, required BuildContext context}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Center(
        child: IconButton(
      onPressed: () {
        if (Navigator.canPop(context)) {
          Navigator.pop(context);
        }
      },
      icon: SvgPicture.asset(
        "assets/images/Arrow 1.svg",
      ),
    )),
    centerTitle: true,
    title: Text(title, textAlign: TextAlign.center, style: Styles.style25),
  );
}
