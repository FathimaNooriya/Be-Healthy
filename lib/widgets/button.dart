import 'package:flutter/material.dart';
import 'package:healthy/theme/colors.dart';

class buttonWidget extends StatelessWidget {
  const buttonWidget({
    required this.myText,
    super.key,
    required this.buttonColor,
  });
  final Widget myText;
  final Color buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        color: buttonColor,
        elevation: 5,
        // surfaceTintColor: AppColors().orange,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: AppColors().grey)),
        child: Center(child: myText),
      ),
    );
  }
}
