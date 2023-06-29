import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../models/admin_meal_model.dart';

ValueNotifier<List<AdminMealModel>> adminMealList = ValueNotifier([]);
Future<void> adminAddToMealList(AdminMealModel value) async {
  final adminMealListDb = await Hive.openBox<AdminMealModel>('weight_db');
  await adminMealListDb.add(value);
  adminGetMealList();
  adminMealList.notifyListeners();
}

Future<void> adminGetMealList() async {
  final adminMealListDb = await Hive.openBox<AdminMealModel>('weight_db');
  adminMealList.value.clear();
  adminMealList.value.addAll(adminMealListDb.values);
  adminMealList.notifyListeners();
}

Future<void> adminDeleteMeal(int id) async {
  final adminMealListDb = await Hive.openBox<AdminMealModel>('weight_db');
  await adminMealListDb.deleteAt(id);
  adminGetMealList();
  adminMealList.notifyListeners();
}

Future<void> openBox() async {
  final adminMealListDb = await Hive.openBox<AdminMealModel>('weight_db');
  //await adminMealListDb.clear();
  //adminMealListDb.delete;
  adminGetMealList();
}

Future<void> adminUpdateMeal(AdminMealModel value, int id) async {
  final adminMealListDb = await Hive.openBox<AdminMealModel>('weight_db');
  adminMealListDb.putAt(id, value);
  adminMealList.notifyListeners();
}
