import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/fonds.dart';
import '../widgets/appbar.dart';
import '../widgets/bargraph_steps.dart';
import '../widgets/button.dart';
import '../widgets/linear_progres.dart';

class stepsScreen extends StatelessWidget {
  const stepsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors().black,
        body: SafeArea(
            child: Column(children: [
          appbarWigget(
            appTitle: "Daily Steps...",
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
              "500 of 12000 steps walked",
              style: AppFonts().normalTextWhite,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
            child: linearProgressWdget(
                value: .5, valueColor: AppColors().blue, height: 5),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: buttonWidget(
              buttonColor: AppColors().black,
              myText: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/step2.png",
                      height: 70,
                    ),
                    Expanded(
                      child: buttonWidget(
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
                              "5500",
                              style: AppFonts().headding2black,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.remove_circle_rounded)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 300,
            width: 330,
            child: BargraphSteps(),
          )
        ])));
  }
}
