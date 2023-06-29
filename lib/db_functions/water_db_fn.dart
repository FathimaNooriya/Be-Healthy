import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/water_model.dart';

ValueNotifier<List<WaterModel>> waterList = ValueNotifier([]);
Future<void> addWaterCount(WaterModel value) async {
  final waterListDb = await Hive.openBox<WaterModel>('weight_db');
  await waterListDb.add(value);
}

Future<void> getWeightList() async {
  final waterListDb = await Hive.openBox<WaterModel>('weight_db');
  waterList.value.clear();
  waterList.value.addAll(waterListDb.values);
}
