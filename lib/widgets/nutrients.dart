import 'package:flutter/material.dart';
import 'package:healthy/widgets/linear_progres.dart';

import '../theme/colors.dart';
import '../theme/fonds.dart';

class nutrientsWidget extends StatelessWidget {
  const nutrientsWidget(
      {super.key, this.nutrientName, this.nutrientValue, this.nutrientPercent});
  final nutrientName;
  final nutrientValue;
  final nutrientPercent;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            nutrientName,
            style: AppFonts().headding2White,
          ),
          Text(
            nutrientValue,
            style: AppFonts().headding2grey,
          ),
          SizedBox(
            width: 70,
            child: linearProgressWdget(
                value: .3, valueColor: AppColors().pink, height: 5),
          ),
          Text(
            nutrientPercent,
            style: AppFonts().headding2grey,
          ),
        ],
      ),
    );
  }
}
