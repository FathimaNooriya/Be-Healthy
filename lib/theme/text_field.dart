import 'package:flutter/material.dart';
import 'package:healthy/theme/colors.dart';

class textFieldWidget extends StatelessWidget {
  textFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.validator,
   // Function()? OnTap,
    required this.number,
  });
  final String hintText;
  final dynamic controller;
  dynamic Ontap;
  final validator;
  bool number;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    //  onTap: Ontap,
      controller: controller,
      keyboardType: number ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors().white),
            borderRadius: BorderRadius.circular(12)),
      ),
      validator: validator,
    );
  }
}

// class TecxfieldDecoration {
//   final TextfieldDec = OutlineInputBorder(
//       borderSide: BorderSide(color: AppColors().black),
//       borderRadius: BorderRadius.circular(15));
// }
