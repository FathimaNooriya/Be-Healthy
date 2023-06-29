import 'package:flutter/material.dart';
import 'package:healthy/theme/fonds.dart';
import 'package:healthy/widgets/button.dart';

import '../functions/functions.dart';
import '../theme/colors.dart';

import '../widgets/appbar.dart';
import '../widgets/dropDown.dart';
import '../widgets/fechingdatawidget.dart';

class runningScreen extends StatelessWidget {
  const runningScreen({super.key});

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
                      appTitle: "Running...",
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
                                  'Slow (8 km/h)',
                                  'Moderate (9.6 km/h)',
                                  'Fast (12.9 km/h)'
                                ],
                                dropdownValue: "Slow (8 km/h)",
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
