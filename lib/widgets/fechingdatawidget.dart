import 'package:flutter/material.dart';
import '../theme/fonds.dart';
import '../theme/text_field.dart';

class fechingDataWidget extends StatelessWidget {
  const fechingDataWidget(
      {super.key,
      required this.data,
      required this.unit,
      this.controller,
      this.validator});
  final String data;
  final String unit;
  final dynamic controller;
  final validator;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
            width: 220,
            child: textFieldWidget(
                number: true,
                hintText: data,
                controller: controller,
                validator: (valur) {
                  validator;
                })),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            unit,
            style: AppFonts().normalTextWhite,
          ),
        )
      ],
    );
  }
}
