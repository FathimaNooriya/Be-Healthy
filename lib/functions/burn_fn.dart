import 'functions.dart';

late double targetBurnEnergy;
late double burnedEnergy;
late double timeInMin;
late double met;
late String workouts;
late String speed;
totalEneryShouldBurn() {
  targetBurnEnergy = tdee - bmr;
  if (targetBurnEnergy < 220) {
    targetBurnEnergy = 220;
  }
}

eneryBurnedFromWorkouts() {
  switch (workouts) {
    case 'Running':
      {
        if (speed == "Slow (8 km/h)") {
          met = 7.5;
        } else if (speed == "Moderate (9.6 km/h)") {
          met = 9.8;
        } else if (speed == "Fast (12.9 km/h)") {
          met = 11.8;
        }
        break;
      }
    case "Walking":
      {
        if (speed == "Slow (3.2 km/h)") {
          met = 2.9;
        } else if (speed == "Moderate (5.6 km/h)") {
          met = 3.9;
        } else if (speed == "Fast (7.2 km/h)") {
          met = 5.0;
        }
        break;
      }
    case "Cycling":
      {
        if (speed == "Leisurely biking(16 km/h)") {
          met = 4.0;
        } else if (speed == "Moderate biking(19.3-22.4 km/h)") {
          met = 3.9;
        } else if (speed == "Fast (22.5-25.7 km/h)") {
          met = 5.0;
        }
        break;
      }
    case "Swimming":
      {
        if (speed == "Light") {
          met = 5.0;
        } else if (speed == "Vigorous") {
          met = 8.0;
        }
        break;
      }
  }

  // Calories Burned = 1.05 * MET value * body weight (in kg) * exercise duration (in hours)
  burnedEnergy = 1.05 * met * currentWeight * timeInMin / 60;
}
