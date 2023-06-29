import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/meal_model.dart';

ValueNotifier<List<MealModel>> mealList = ValueNotifier([]);
Future<void> addMeal(MealModel value) async {
  final mealListDb = await Hive.openBox<MealModel>('weight_db');
  await mealListDb.add(value);
}

Future<void> getWeightList() async {
  final mealListDb = await Hive.openBox<MealModel>('weight_db');
  mealList.value.clear();
  mealList.value.addAll(mealListDb.values);
}
