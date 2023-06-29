import 'package:flutter/material.dart';

class linearProgressWdget extends StatelessWidget {
  const linearProgressWdget(
      {super.key, required this.value, required this.valueColor, required this.height});
  final double value;
  final Color valueColor;
  final int height;
  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      minHeight: 5,
      color: valueColor,
    );
  }
}
