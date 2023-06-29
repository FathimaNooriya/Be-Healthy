import 'package:flutter/material.dart';

import '../functions/water_fn.dart';
import '../theme/colors.dart';
import '../theme/fonds.dart';
import '../widgets/appbar.dart';
import '../widgets/bargraph_water.dart';
import '../widgets/button.dart';
import '../widgets/linear_progres.dart';

class waterScreen extends StatelessWidget {
  const waterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: SafeArea(
          child: Column(
        children: [
          appbarWigget(
            appTitle: "Water...",
            iconThere: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
              Text(
                "Today",
                style: AppFonts().headding2White,
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 40,
              width: 70,
              child: buttonWidget(
                  buttonColor: AppColors().white,
                  myText: Text(
                    "Edit",
                    style: AppFonts().normalTextBlack,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "${drinkedWater} of ${waterNeededPerGlass} glasses",
              style: AppFonts().normalTextWhite,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 10, left: 10, bottom: 5, top: 5),
            child: linearProgressWdget(
                value: (drinkedWater / waterNeededPerGlass),
                valueColor: AppColors().blue,
                height: 5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    addGlass = true;
                    weterDrinkedInaDay();
                  },
                  icon: Icon(
                    Icons.add_circle_rounded,
                  )),
              Container(
                child: Image.asset(
                  "assets/images/water.png",
                  height: 120,
                ),
              ),
              IconButton(
                  onPressed: () {
                    weterDrinkedInaDay();
                  },
                  icon: Icon(Icons.remove_circle_rounded)),
            ],
          ),
          Text(
            "1 Glass (250 ml)",
            style: AppFonts().headding2grey,
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            child: buttonWidget(
                myText: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Remainder",
                    style: AppFonts().headding2White,
                  ),
                ),
                buttonColor: AppColors().black),
            onTap: () async {
              // await showDialog(
              //   context: context,
              //   builder: ((context) {
              //     return AlertDialog(
              //         title: Text('Water Remainder'),
              //         content: DropdownButton(
              //           items: [],
              //           onChanged: (value) {},
              //         ),
              //         actions: []);
              //   }),
              // );
            },
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 250,
            child: BarGraphWater(),
          )
        ],
      )),
    );
  }
}
