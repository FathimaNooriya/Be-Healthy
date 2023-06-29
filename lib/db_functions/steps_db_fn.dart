import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/steps_model.dart';

ValueNotifier<List<StepsModel>> stepCountList = ValueNotifier([]);
Future<void> addStepCount(StepsModel value) async {
  final stepCountListDb = await Hive.openBox<StepsModel>('stepCount_db');
  await stepCountListDb.add(value);
}

Future<void> getWeightList() async {
  final stepCountListDb = await Hive.openBox<StepsModel>('weight_db');
  stepCountList.value.clear();
  stepCountList.value.addAll(stepCountListDb.values);
}
