import 'functions.dart';

late int waterNeeded;
int drinkedWater = 0;
late int waterNeededPerGlass;
bool addGlass = false;
waterNeededPerDay() {
  if (genterValue == "Male") {
    // waterNeeded = 3;
    // (3 * 1000) / 250
    waterNeededPerGlass = 12;
    print(waterNeededPerGlass);
  } else {
    // waterNeeded = 2.2;
    //(2.2 * 1000) / 250
    waterNeededPerGlass = 9;
    print(waterNeededPerGlass);
  }
}

weterDrinkedInaDay() {
  if (addGlass) {
    drinkedWater++;
    addGlass = false;
  } else {
    drinkedWater--;
  }
}

weterNeedToDrink() {
  waterNeeded = drinkedWater - drinkedWater;
}
