import 'package:flutter/material.dart';

class CustomCheckIcon extends StatelessWidget {
  const CustomCheckIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: (50 / 390) * MediaQuery.sizeOf(context).width,
      backgroundColor: const Color(0xFFefeded),
      child: CircleAvatar(
          radius: (40 / 390) * MediaQuery.sizeOf(context).width,
          backgroundColor: const Color(0xff34A853),
          child: Icon(
            Icons.check,
            color: const Color(0xffFFFFFF),
            size: (60 / 390) * MediaQuery.sizeOf(context).width,
          )),
    );
  }
}
