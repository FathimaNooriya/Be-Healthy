import 'package:flutter/material.dart';
import 'package:healthy/screens/cycling.dart';
import 'package:healthy/screens/running.dart';
import 'package:healthy/theme/colors.dart';
import 'package:healthy/theme/fonds.dart';

import '../functions/burn_fn.dart';
import 'swimming.dart';
import 'walking.dart';
import '../widgets/appbar.dart';
import '../widgets/button.dart';

class burnScreen extends StatelessWidget {
  const burnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().black,
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                appbarWigget(
                  appTitle: "Burn at least...",
                  iconThere: true,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "550 ",
                          style: AppFonts().headding2White,
                        ),
                        Text(
                          "Cal Burnt",
                          style: AppFonts().headding2White,
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Positioned(
                          left: 42,
                          bottom: 15,
                          child: Image.asset(
                            "assets/images/work.png",
                            height: 138,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: CircularProgressIndicator(
                              backgroundColor: AppColors().greyText,
                              color: AppColors().green,
                              strokeWidth: 8,
                              value: .35,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "1230",
                          style: AppFonts().headding2White,
                        ),
                        Text(
                          "Target",
                          style: AppFonts().headding2White,
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Burning your Calories helps you to get fitter, healthier and lose weight",
                  style: AppFonts().normalTextWhite,
                  textAlign: TextAlign.center,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: InkWell(
                    radius: 25,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Running",
                        style: AppFonts().headding2White,
                      ),
                    ),
                    onTap: () {
                      workouts = "Running";
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => runningScreen(),
                      ));
                    },
                  ),
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Walking",
                        style: AppFonts().headding2White,
                      ),
                    ),
                    onTap: () {
                      workouts = "Walking";
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => walkingScreen(),
                      ));
                    },
                  ),
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Cycling",
                        style: AppFonts().headding2White,
                      ),
                    ),
                    onTap: () {
                      workouts = "Cycling";
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => cyclingScreen(),
                      ));
                    },
                  ),
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: InkWell(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Swimming",
                        style: AppFonts().headding2White,
                      ),
                    ),
                    onTap: () {
                      workouts = "Swimming";
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => swimmingScreen(),
                      ));
                    },
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
