
import 'package:hive/hive.dart';
part 'sleep_model.g.dart';
@HiveType(typeId: 5)
class SleepModel {
   @HiveField(0)
  double sleepTaken;
   @HiveField(1)
  DateTime sleepDate;
   @HiveField(2)
  double sleepTarget;
   @HiveField(3)
  double nextBedTime;
   @HiveField(4)
  double alamtime;

  SleepModel(
      {required this.sleepTaken,
      required this.sleepDate,
      required this.nextBedTime,
      required this.alamtime,
      required this.sleepTarget});
}
