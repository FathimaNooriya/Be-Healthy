import 'package:flutter/material.dart';
import 'package:healthy/functions/functions.dart';

import '../theme/colors.dart';
import '../theme/fonds.dart';
import '../widgets/appbar.dart';
import '../widgets/button.dart';
import '../widgets/dropDown.dart';
import '../widgets/fechingdatawidget.dart';

class cyclingScreen extends StatelessWidget {
  const cyclingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: AppColors().black,
            body: Padding(
                padding: const EdgeInsets.all(12),
                child: Form(
                  child: ListView(children: [
                    appbarWigget(
                      appTitle: "Cycling...",
                      iconThere: true,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Image.asset("assets/images/run.jpg"),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    buttonWidget(
                        myText: Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: DropDownWidget(
                                dropDownlist: [
                                  'Leisurely biking(16 km/h)',
                                  'Moderate biking(19.3-22.4 km/h)',
                                  'Fast (22.5-25.7 km/h)'
                                ],
                                dropdownValue: "Leisurely biking(16 km/h)",
                              ),
                            )),
                        buttonColor: AppColors().grey),
                    SizedBox(
                      height: 30,
                    ),
                    buttonWidget(
                      buttonColor: AppColors().black,
                      myText: fechingDataWidget(
                        controller: runningDistanceController,
                        validator: runningDistanceValidation(),
                        data: "Distance",
                        unit: "Km",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buttonWidget(
                      buttonColor: AppColors().black,
                      myText: fechingDataWidget(
                        controller: runningTimeController,
                        validator: runningTimeValidation(),
                        data: "Time",
                        unit: 'Min',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    buttonWidget(
                        myText: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Track",
                            style: AppFonts().headding2black,
                          ),
                        ),
                        buttonColor: AppColors().grey)
                  ]),
                ))));
  }
}
