import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy/screens/starting.dart';

import '../functions/functions.dart';
import '../theme/colors.dart';
import '../theme/fonds.dart';
import '../theme/text_field.dart';
import '../widgets/button.dart';
import '../widgets/dropDown.dart';

class registration2Page extends StatelessWidget {
  const registration2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors().black,
          body: SafeArea(
              child: Form(
            key: formkeyRegistration2,
            //  autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Expanded(
              child: ListView(children: [
                // appbarWigget(
                //   appTitle: "Hey there...!",
                //   iconThere: false,
                // ),
                SizedBox(
                  height: 40,
                ),
                buttonWidget(
                    myText: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        yourFitness,
                        style: AppFonts().headdingWhite,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    buttonColor: AppColors().pink),

                SizedBox(
                  height: 15,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: textFieldWidget(
                      number: true,
                      hintText: "What is your target weight?",
                      controller: targetWeightController,
                      validator: (value) {
                        targetWeightValidation();
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonWidget(
                  buttonColor: AppColors().lavender2,
                  myText: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("What is you Goal?"),
                  ),
                ),
                // SizedBox(
                //   height: 15,
                // ),
                buttonWidget(
                    myText: DropDownWidget(dropDownlist: [
                      "Weight Loss",
                      "Weight Gain",
                      "Maintain Weight",
                    ], dropdownValue: yourGoal),
                    buttonColor: AppColors().grey),
                SizedBox(
                  height: 15,
                ),
                // SizedBox(
                //   height: 20,
                // ),
                buttonWidget(
                  buttonColor: AppColors().lavender2,
                  myText: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("When were you born?"),
                  ),
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: SizedBox(
                    height: 200,
                    child: CupertinoDatePicker(
                      mode: CupertinoDatePickerMode.date,
                      minimumDate: DateTime(1940, 1, 1),
                      maximumYear: 2023,
                      initialDateTime: DateTime(2000, 1, 1),
                      onDateTimeChanged: (DateTime newDateTime) {
                        // Do something
                        dateOfBirth = newDateTime;
                        ageValidation();
                        // print(newDateTime);
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),

                buttonWidget(
                  buttonColor: AppColors().lavender2,
                  myText: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("How active you are?"),
                  ),
                ),

                buttonWidget(
                    myText: DropDownWidget(dropDownlist: [
                      "Sedentary",
                      "Lightly Active",
                      "Moderately Active",
                      "Very Active",
                      "Extremely Active"
                    ], dropdownValue: activity),
                    buttonColor: AppColors().grey),
                SizedBox(
                  height: 20,
                ),
                // buttonWidget(
                //   buttonColor: AppColors().lavender2,
                //   myText: Padding(
                //     padding: const EdgeInsets.all(8.0),
                //     child: Text("Select your weekly rate"),
                //   ),
                // ),
                // SizedBox(
                //   height: 15,
                // ),
                // buttonWidget(
                //     myText: DropDownWidget(dropDownlist: [
                //       "Lose 1Kg/week",
                //       "Lose 0.75 Kg/week",
                //       "Lose 0.50 Kg/week",
                //       "Lose 0. 25 Kg/week",
                //       "Lose 0.15 Kg/week"
                //     ], dropdownValue: "Lose 1Kg/week"),
                //     buttonColor: AppColors().grey),
                // SizedBox(
                //   height: 15,
                // ),
                InkWell(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 40, left: 40),
                    child: buttonWidget(
                        buttonColor: AppColors().white,
                        myText: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                "Next",
                                style: AppFonts().normalTextWhite,
                              ),
                            ),
                            Icon(
                              Icons.arrow_right_sharp,
                              color: AppColors().greyText,
                            ),
                          ],
                        )),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => startingPage(),
                    ));
                    saveRegistration();
                  },
                ),
              ]),
            ),
          ))),
    );
  }
}
