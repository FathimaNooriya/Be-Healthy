

import 'package:hive/hive.dart';

@HiveType(typeId: 3)
class WaterModel {
   @HiveField(0)
  double waterIntake;
   @HiveField(1)
  String waterReminder;
   @HiveField(2)
  DateTime waterDate;
   @HiveField(3)
  double waterTarget;
  

  WaterModel(
      {required this.waterIntake,
      required this.waterReminder,
      required this.waterDate,
      required this.waterTarget });
}
