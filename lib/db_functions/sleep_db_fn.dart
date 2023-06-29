import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/sleep_model.dart';


ValueNotifier<List<SleepModel>> sleepList = ValueNotifier([]);
Future<void> addSleep(SleepModel value) async {
  final sleepListDb = await Hive.openBox<SleepModel>('weight_db');
  await sleepListDb.add(value);
}

Future<void> getWeightList() async {
  final sleepListDb = await Hive.openBox<SleepModel>('weight_db');
  sleepList.value.clear();
  sleepList.value.addAll(sleepListDb.values);
}