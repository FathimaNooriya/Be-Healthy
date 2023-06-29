import 'package:flutter/material.dart';
import 'package:healthy/functions/functions.dart';
import 'package:healthy/screens/registration2_page.dart';
import 'package:healthy/theme/colors.dart';
import 'package:healthy/theme/fonds.dart';
import 'package:healthy/theme/text_field.dart';
import 'package:healthy/widgets/button.dart';
import 'package:healthy/widgets/dropDown.dart';
import '../widgets/appbar.dart';
import '../widgets/choice_chip.dart';

class regisrationPage extends StatelessWidget {
  const regisrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: SafeArea(
        child: Form(
          key: formkeyRegistration,
          //  autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                choiceChipWidget(),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "You are taken first step towards your healthy body. We need a few details to kick-start your journey.",
                  style: AppFonts().normalTextWhite,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: textFieldWidget(
                      number: false,
                      hintText: "What is your name?",
                      controller: nameController,
                      validator: (value) {
                        nameValidation(value);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonWidget(
                  buttonColor: AppColors().lavender2,
                  myText: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("What is your Gender?"),
                  ),
                ),
                buttonWidget(
                    myText: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: DropDownWidget(
                            dropDownlist: ["Male", "Female"],
                            dropdownValue: genterValue,
                          ),
                        )),
                    buttonColor: AppColors().grey),
                SizedBox(
                  height: 20,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: textFieldWidget(
                      number: true,
                      hintText: "How tall are you?",
                      controller: heightController,
                      validator: (value) {
                        heightValidation(value);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: textFieldWidget(
                      number: true,
                      hintText: "What is your current weight?",
                      controller: currentWeightController,
                      validator: (value) {
                        currentWeightValidation(value);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
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
                  onTap: () {
                    gotoNext();
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => registration2Page(),
                    ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// DateTime selectedDate = DateTime.now();
// Future<void> selectDate(BuildContext context) async {
//   final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: selectedDate,
//       firstDate: DateTime(2015, 8),
//       lastDate: DateTime(2101));

//   if (picked != null && picked != selectedDate) {
//     // setState(() {
//     selectedDate = picked;
//     //   });
//   }
// }
