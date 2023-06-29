import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:healthy/functions/water_fn.dart';
import 'package:healthy/functions/weight_fn.dart';

import 'burn_fn.dart';

final formkeyRegistration = GlobalKey<FormState>();
final formkeyRegistration2 = GlobalKey<FormState>();
TextEditingController nameController = TextEditingController();
TextEditingController ageController = TextEditingController();
TextEditingController heightController = TextEditingController();
TextEditingController currentWeightController = TextEditingController();
TextEditingController targetWeightController = TextEditingController();
TextEditingController sexController = TextEditingController();
TextEditingController runningDistanceController = TextEditingController();
TextEditingController runningTimeController = TextEditingController();
late DateTime dateOfBirth;
late String yourFitness;
String yourGoal = "Weight Loss";
late double bmi;
late double bmr;
late double currentWeight;
late double targetWeight;
late double hight;
late int age;
late double tdee;

double calorieTaken = 0;
String genterValue = "Male";
String activity = "Sedentary";
String selectedChoiceChip = 'Hi User..';

String? nameValidation(value) {
  if (value == "") {
    return "Please Enter your name";
  } else if (nameController.text.length < 3) {
    return "Enter your name properly";
  } else {
    return null;
  }
}

ageValidation() {
  age = dateOfBirth.year - DateTime.now().year;
}

String? sexValidation() {
  if (sexController.text == "") {
    return "Please Enter your sex";
  } else {
    return null;
  }
}

String? heightValidation(value) {
  if (value == "") {
    return "Please Enter your height";
  } else {
    hight = double.parse(heightController.text);
    return null;
  }
}

String? currentWeightValidation(value) {
  if (value == "") {
    return "Please Enter your weight";
  } else {
    currentWeight = double.parse(currentWeightController.text);
    todaysWeight = currentWeight;
    return null;
  }
}

String? targetWeightValidation() {
  if (targetWeightController.text == "") {
    return "Please Enter your target weight";
  } else {
    targetWeight = double.parse(currentWeightController.text);
    return null;
  }
}

String? runningDistanceValidation() {
  if (runningDistanceController.text == "") {
    return "Please Enter the distace you run";
  } else {
    return null;
  }
}

String? runningTimeValidation() {
  if (runningTimeController.text == "") {
    return "Please Enter the time you run";
  } else {
    return null;
  }
}

basalMetabolicRate() {
//double weight, double hight, int age

  if (genterValue == "Male") {
    bmr = (10 * currentWeight) + (6.25 * hight) - (5 * age) + 5;
  } else {
    bmr = (10 * currentWeight) + (6.25 * hight) - (5 * age) - 161;
  }
}

totalDailyEneryExpenditure() {
  switch (activity) {
    case 'Sedentary':
      {
        tdee = 1.2 * bmr;
        break;
      }
    case "Lightly Active":
      {
        tdee = 1.375 * bmr;
        break;
      }
    case "Moderately Active":
      {
        tdee = 1.55 * bmr;
        break;
      }
    case "Very Active":
      {
        tdee = 1.725 * bmr;
        break;
      }
    case "Extremely Active":
      {
        tdee = 1.9 * bmr;
        break;
      }
  }
}

bodyMassIndex() {
  bmi = currentWeight * 10000 / (hight * hight);
  if (bmi < 18.5) {
    yourFitness = "You are under weight";
  } else if (bmi > 25 && bmi < 30) {
    yourFitness = "You are  At risk of overweight";
  } else if (bmi > 30) {
    yourFitness = "You are  overweight";
  } else {
    yourFitness = "You are perfectly fit";
  }
}

saveRegistration() async {
  if (formkeyRegistration2.currentState!.validate()) {
    bodyMassIndex();
    basalMetabolicRate();
    totalDailyEneryExpenditure();
    waterNeededPerDay();
    dailyCalorieNeeded();
    await totalEneryShouldBurn();
    print("Your bmr");
    print(bmr);
    print("Your tdee");
    print(tdee);
    print("Your Daily Calorie intake");
    print(dailyCalorieIntake);
    cleardata();
  }
}

gotoNext() {
  if (formkeyRegistration.currentState!.validate()) {
    bodyMassIndex();
    print(bmi);
    print(yourFitness);
  }
}

cleardata() {
  nameController.clear();
  ageController.clear();
  heightController.clear();
  currentWeightController.clear();
  targetWeightController.clear();
  sexController.clear();
  runningDistanceController.clear();
  runningTimeController.clear();
}

// DateTimePicker(
//   type: DateTimePickerType.dateTimeSeparate,
//   dateMask: 'd MMM, yyyy',
//   initialValue = DateTime.now().toString(),
//   firstDate: DateTime(2000),
//   lastDate: DateTime(2100),
//   icon: Icon(Icons.event),
//   dateLabelText: 'Date',
//   timeLabelText: "Hour",
//   selectableDayPredicate: (date) {
//     // Disable weekend days to select from the calendar
//     if (date.weekday == 6 || date.weekday == 7) {
//       return false;
//     }

//     return true;
//   },
//   onChanged: (val) => print(val),
//   validator: (val) {
//     print(val);
//     return null;
//   },
//   onSaved: (val) => print(val),
// );