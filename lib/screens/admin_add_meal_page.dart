// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../db_functions/admin_meal_db_fn.dart';
import '../functions/admin_functions.dart';
import '../theme/colors.dart';
import '../theme/fonds.dart';
import '../theme/text_field.dart';
import '../widgets/appbar.dart';
import '../widgets/button.dart';
import '../widgets/dropDown.dart';
import '../widgets/image_pick.dart';

class adminAddMealPage extends StatefulWidget {
  String? mealName;
  String? mealCategory;
  double? mealCalorie;
  double? protein;
  double? fat;
  double? carbs;
  double? fiber;
  String? mealImage;
  int? index;
  bool editMeal = false;
  adminAddMealPage(
      {super.key,
      this.mealName,
      this.mealCategory,
      this.mealImage,
      this.mealCalorie,
      this.protein,
      this.carbs,
      this.fat,
      this.fiber,
      this.index,
      required this.editMeal});

  @override
  State<adminAddMealPage> createState() => _adminAddMealPageState();
}

class _adminAddMealPageState extends State<adminAddMealPage> {
  @override
  void initState() {
    if (widget.editMeal) {
      mealNameController = TextEditingController(text: widget.mealName);
      mealCalorieController =
          TextEditingController(text: widget.mealCalorie.toString());
      proteinController =
          TextEditingController(text: widget.protein.toString());
      fatsController = TextEditingController(text: widget.fat.toString());
      carbsController = TextEditingController(text: widget.carbs.toString());
      fiberController = TextEditingController(text: widget.fiber.toString());
      adminDropDownValue = widget.mealCategory!;
      mealImage = File(widget.mealImage!);
    }

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors().black,
        body: SafeArea(
          child: Form(
            //autovalidateMode: AutovalidateMode.onUserInteraction,
            key: formkeyAddMeal,
            child: ListView(
              children: [
                appbarWigget(
                  appTitle: "Add meal",
                  iconThere: false,
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: GestureDetector(
                    child: mealImage != null
                        ? CircleAvatar(
                            backgroundImage: FileImage(File(mealImage!.path)),
                            radius: 60,
                          )
                        : CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                            radius: 60,
                          ),
                    onTap: () async {
                      await pickImage(ImageSource.gallery);
                      setState(() {
                   
                      });
                      //  imagepicker(context);
                    },
                  ),
                  //  CircleAvatar(
                  //   backgroundImage: NetworkImage(
                  //       'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png'),
                  //   radius: 60,
                  // ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Visibility(
                    visible: addMealImage,
                    child: Text(
                      'Please Add Photo',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 177, 22, 11)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: textFieldWidget(
                    number: false,
                    hintText: "Meal Name",
                    controller: mealNameController,
                    validator: (value) {
                      mealNameValidation(value);
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: textFieldWidget(
                      number: true,
                      hintText: "Amount meal",
                      controller: mealAmountController,
                      validator: (value) {
                        mealAmountValidation(value);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: textFieldWidget(
                      number: true,
                      hintText: "Amount of Calorie",
                      controller: mealCalorieController,
                      validator: (value) {
                        mealCalorieValidation(value);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonWidget(
                    myText: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: DropDownWidget(
                            dropDownlist: ["Brakefast", "Lunch", "Dinner"],
                            dropdownValue: adminDropDownValue,
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
                      hintText: "Protein",
                      controller: proteinController,
                      validator: (value) {
                        mealProteinValidation(value);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: textFieldWidget(
                      number: true,
                      hintText: "Fats",
                      controller: fatsController,
                      validator: (value) {
                        mealFatsValidation(value);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: textFieldWidget(
                      number: true,
                      hintText: "Carbs",
                      controller: carbsController,
                      validator: (value) {
                        mealCarbsValidation(value);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                buttonWidget(
                  buttonColor: AppColors().black,
                  myText: textFieldWidget(
                      number: true,
                      hintText: "Fiber",
                      controller: fiberController,
                      validator: (value) {
                        mealFiberValidation(value);
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: InkWell(
                    child: buttonWidget(
                      buttonColor: AppColors().white,
                      myText: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: widget.editMeal
                            ? Text(
                                "Update",
                                style: AppFonts().normalTextWhite,
                              )
                            : Text(
                                "Save",
                                style: AppFonts().normalTextWhite,
                              ),
                      ),
                    ),
                    onTap: () {
                      widget.editMeal
                          ? saveAdminMeal(widget.editMeal, widget.index)
                          : saveAdminMeal(widget.editMeal);
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
