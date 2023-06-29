import 'package:hive/hive.dart';
 part 'registration_model.g.dart';
@HiveType(typeId: 1)
class RegistrationModel {
  @HiveField(0)
  String name;
  @HiveField(1)
  int age;
  @HiveField(2)
  String genter;
  @HiveField(3)
  double height;
  @HiveField(4)
  double weight;
  @HiveField(5)
  String? goal;
  RegistrationModel(
      {required this.name,
      required this.age,
      required this.genter,
      required this.weight,
      required this.height,
      this.goal});
}
