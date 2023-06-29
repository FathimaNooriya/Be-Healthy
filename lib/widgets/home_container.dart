import 'package:flutter/material.dart';
import 'package:healthy/theme/colors.dart';

import '../theme/fonds.dart';

class homeContainer extends StatelessWidget {
  const homeContainer(
      {super.key,
      required this.text,
      required this.value,
      required this.image,
      this.onTap,
      required this.color});
  final String text;
  final String value;
  final String image;
  final onTap;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        splashColor: color,
        radius: 15,
        child: Card(
          color: color,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              image,
              height: 60,
              width: 60,
            ),
            Text(
              text,
              style: AppFonts().normalTextBlack,
            ),
            Text(
              value,
              style: AppFonts().normalTextWhite,
            )
          ]),
        ),
        onTap: onTap,
      ),
    );
  }
}
