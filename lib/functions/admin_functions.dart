import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:healthy/models/admin_meal_model.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../db_functions/admin_meal_db_fn.dart';
import '../main.dart';
import '../screens/admin_home.dart';

final formkeyAdminLogin = GlobalKey<FormState>();
final formkeyAddMeal = GlobalKey<FormState>();
TextEditingController adminUsername = TextEditingController();
TextEditingController adminPassword = TextEditingController();
TextEditingController mealNameController = TextEditingController();
TextEditingController mealAmountController = TextEditingController();
TextEditingController mealCalorieController = TextEditingController();
TextEditingController proteinController = TextEditingController();
TextEditingController fatsController = TextEditingController();
TextEditingController carbsController = TextEditingController();
TextEditingController fiberController = TextEditingController();
late double mealCalorie;
late double protein;
late double fat;
late double carbs;
late double fiber;
bool addMealImage = false;
File? mealImage;
String adminDropDownValue = "Brakefast";

String? userNameValidation() {
  if (adminUsername.text.isEmpty) {
    return "Please Enter the user name";
  }
  return null;
}

String? passwordValidation() {
  if (adminPassword.text.isEmpty) {
    return "Please Enter the password name";
  } else {
    return null;
  }
}

String? mealNameValidation(String value) {
  if (value == "") {
    return "Please Enter the meal name";
  } else {
    return null;
  }
}

String? mealAmountValidation(String value) {
  if (value == "") {
    return "Please Enter the meal Amount";
  } else {
    return null;
  }
}

String? mealCalorieValidation(String value) {
  if (value == "") {
    return "Please Enter the calorie Amount";
  } else {
    mealCalorie = double.parse(value);
    return null;
  }
}

String? mealProteinValidation(String value) {
  protein = double.parse(value);
  return null;
}

String? mealFatsValidation(String value) {
  fat = double.parse(value);
  return null;
}

String? mealCarbsValidation(String value) {
  carbs = double.parse(value);
  return null;
}

String? mealFiberValidation(String value) {
  fiber = double.parse(value);
  return null;
}

Future pickImage(ImageSource source1) async {
  try {
    final imagePic = await ImagePicker().pickImage(source: source1);
    if (imagePic == null) {
      return;
    }
    final imagePath = await File(imagePic.path);

    mealImage = imagePath;
    print(",,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,");

    // imageList.value[0] = await ImagePicker().pickImage(source: source1);
    // print("oooooooooooooooooooooooooo");
    // print(imageList.value[0]);
    //  if (imageList.value[0] == null) {
    //    return;
    //  }
    // final imageTemporary = File(imageList.value[0]!.path);
    // this.imageList.value[0] = imageTemporary as XFile?;
  } on PlatformException catch (e) {
    print("Faild to pic image");
    print(e);
  }
}

Future<void> saveAdminMeal(bool editMeal, [int? id]) async {
  print("..............................");
  if (mealImage != null) {
    print(".............333333333333.................");
    if (formkeyAddMeal.currentState!.validate()) {
      if (editMeal == false) {
        print(".............11111111111111111111111111111111.................");
        await adminAddToMealList(AdminMealModel(
            mealName: mealNameController.text.trim(),
            mealCategory: adminDropDownValue,
            mealCalorie: mealCalorie,
            mealImage: mealImage!.path,
            carbs: carbs,
            fat: fat,
            protein: protein,
            fiber: fiber));
      } else {
        await adminUpdateMeal(
            AdminMealModel(
                mealName: mealNameController.text.trim(),
                mealCategory: adminDropDownValue,
                mealCalorie: mealCalorie,
                mealImage: mealImage!.path,
                carbs: carbs,
                fat: fat,
                protein: protein,
                fiber: fiber),
            id!);
        openBox();
      }
      addMealImage = false;
      clearData();
    } else {
      addMealImage = true;
    }
  }
}

void clearData() {
  mealNameController.clear();
  mealAmountController.clear();
  mealCalorieController.clear();
  proteinController.clear();
  fatsController.clear();
  carbsController.clear();
  fiberController.clear();
  mealImage = null;
}

adminlogin(context) async {
  if (!formkeyAdminLogin.currentState!.validate()) {
    return;
  } else {
    if (adminPassword.text == "1234" && adminUsername.text == "fathima") {
      final sharedpre = await SharedPreferences.getInstance();
      await sharedpre.setBool(saveKey, true);
      Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => adminHomeScreen()),
      );
      adminClearData();
    }
  }
}

adminClearData() {
  adminPassword.clear();
  adminUsername.clear();
}

adminLogoutFn() {}
