import 'package:hive/hive.dart';

import '../models/weight_model.dart';
import 'package:flutter/material.dart';

ValueNotifier<List<WeightModel>> weightList = ValueNotifier([]);
Future<void> addWeight(WeightModel value) async {
  final weightListDb = await Hive.openBox<WeightModel>('weight_db');
  await weightListDb.add(value);
}

Future<void> getWeightList() async {
  final weightListDb = await Hive.openBox<WeightModel>('weight_db');
  weightList.value.clear();
  weightList.value.addAll(weightListDb.values);
}
