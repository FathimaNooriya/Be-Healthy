import 'package:healthy/db_functions/weight_db_fn.dart';

import 'functions.dart';

late double todaysWeight;
bool addWeight = false;
late double targetWeight;
late String weeklyRate;
//late double dailyCalorieIntake;
double dailyCalorieIntake = 0;







weightInaDay() {
  if (addWeight) {
    todaysWeight += .5;
    print(todaysWeight);
  } else {
    todaysWeight -= .5;
    print(todaysWeight);
  }
}

setWeightGoal() {
  if (addWeight) {
    targetWeight += .5;
    print(todaysWeight);
  } else {
    targetWeight -= .5;
    print(todaysWeight);
  }
}

dailyCalorieNeeded() {
  if (yourGoal == "Weight Loss") {
    switch (weeklyRate) {
      case 'Lose 1Kg/week':
        {
          dailyCalorieIntake = tdee - ((7716 / 7) / 2);
          print(dailyCalorieIntake);
          break;
        }
      case "Lose 0.75 Kg/week":
        {
          dailyCalorieIntake = tdee - (((7716 * 0.75) / 7) / 2);
          print(dailyCalorieIntake);
          break;
        }
      case "Lose 0.50 Kg/week":
        {
          dailyCalorieIntake = tdee - (((7716 * 0.50) / 7)) / 2;
          print(dailyCalorieIntake);
          break;
        }
      case "Lose 0. 25 Kg/week":
        {
          dailyCalorieIntake = tdee - (((7716 * 0.25) / 7) / 2);
          print(dailyCalorieIntake);
          break;
        }
      case "Lose 0.15 Kg/week":
        {
          dailyCalorieIntake = tdee - (((7716 * 0.15) / 7) / 2);
          print(dailyCalorieIntake);
          break;
        }
    }
    //dailyCalorieIntake = (tdee * 75) / 100;
  } else if (yourGoal == "Weight Gain") {
    switch (weeklyRate) {
      case 'Lose 1Kg/week':
        {
          dailyCalorieIntake = tdee + ((7716 / 7) * 0.25);
          print(dailyCalorieIntake);
          break;
        }
      case "Lose 0.75 Kg/week":
        {
          dailyCalorieIntake = tdee + (((7716 * 0.75) / 7) * 0.25);
          print(dailyCalorieIntake);
          break;
        }
      case "Lose 0.50 Kg/week":
        {
          dailyCalorieIntake = tdee + (((7716 * 0.50) / 7) * 0.25);
          print(dailyCalorieIntake);
          break;
        }
      case "Lose 0. 25 Kg/week":
        {
          dailyCalorieIntake = tdee + (((7716 * 0.25) / 7) * 0.25);
          print(dailyCalorieIntake);
          break;
        }
      case "Lose 0.15 Kg/week":
        {
          dailyCalorieIntake = tdee + (((7716 * 0.15) / 7) * 0.25);
          print(dailyCalorieIntake);
          break;
        }
    }
    //dailyCalorieIntake = (tdee * 110) / 100;
  } else {
    dailyCalorieIntake = (tdee * 0.15);
  }
}