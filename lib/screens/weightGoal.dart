import 'package:flutter/material.dart';
import 'package:healthy/theme/fonds.dart';
import 'package:healthy/widgets/button.dart';
import 'package:healthy/widgets/dropDown.dart';

import '../functions/burn_fn.dart';
import '../functions/weight_fn.dart';
import '../theme/colors.dart';
import '../widgets/appbar.dart';

class weightGoalScreen extends StatelessWidget {
  const weightGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: ListView(children: [
        appbarWigget(
          appTitle: "Weight Goal",
          iconThere: true,
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Set  Weight Goal ",
            style: AppFonts().headding2White,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        buttonWidget(
          buttonColor: AppColors().blue,
          myText: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_circle_rounded,
                  )),
              Text(
                "55",
                style: AppFonts().headding2black,
              ),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.remove_circle_rounded)),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        buttonWidget(
            myText: DropDownWidget(dropDownlist: [
              "Lose 1Kg/week",
              "Lose 0.75 Kg/week",
              "Lose 0.50 Kg/week",
              "Lose 0. 25 Kg/week",
              "Lose 0.15 Kg/week"
            ], dropdownValue: "Lose 1Kg/week"),
            buttonColor: AppColors().grey),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Container(
              width: 230,
              child: buttonWidget(
                  myText: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Eat Less Than",
                          style: AppFonts().headding2White,
                        ),
                      ),
                      Container(
                        width: 110,
                        child: buttonWidget(
                            myText: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("${dailyCalorieIntake}"),
                            ),
                            buttonColor: AppColors().black),
                      ),
                      Text(
                        "Cal EveryDay",
                        style: AppFonts().normalTextWhite,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  buttonColor: AppColors().pink),
            ),
            SizedBox(
              width: 50,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 230,
                child: buttonWidget(
                    myText: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Burn More Than",
                              style: AppFonts().headding2White,
                            ),
                          ),
                          Container(
                            width: 110,
                            child: buttonWidget(
                                myText: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("${targetBurnEnergy}"),
                                ),
                                buttonColor: AppColors().black),
                          ),
                          Text(
                            "Cal EveryDay",
                            style: AppFonts().normalTextWhite,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    buttonColor: AppColors().lavender),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: buttonWidget(
              myText: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Done",
                  style: AppFonts().headding2black,
                ),
              ),
              buttonColor: AppColors().grey),
        )
      ]),
    );
  }
}
