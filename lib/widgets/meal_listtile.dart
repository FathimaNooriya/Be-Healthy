import 'package:flutter/material.dart';

import '../theme/fonds.dart';

class mealListtile extends StatelessWidget {
  const mealListtile(
      {super.key, this.mealImage, this.mealName, this.mealCalori});
  final mealImage;
  final mealName;
  final mealCalori;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
      ),
      child: ListTile(
        leading: Image.asset(
          mealImage,
          width: 70,
        ),
        title: Text(
          mealName,
          style: AppFonts().headding2grey,
        ),
        trailing: Text(
          mealCalori,
          style: AppFonts().headding2White,
        ),
      ),
    );
  }
}
