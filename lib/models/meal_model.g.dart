// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealModelAdapter extends TypeAdapter<MealModel> {
  @override
  final int typeId = 6;

  @override
  MealModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealModel(
      meal_id: fields[0] as int?,
      mealName: fields[1] as String,
      mealCategory: fields[2] as String,
      mealCalorie: fields[3] as double,
      mealAmount: fields[8] as int,
      mealImage: fields[12] as String,
      carbs: fields[6] as double?,
      fat: fields[5] as double?,
      protein: fields[4] as double?,
      fiber: fields[7] as double?,
      totalMealCalorie: fields[10] as double?,
      totalMealCategoryCalorie: fields[9] as double?,
      mealDate: fields[11] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, MealModel obj) {
    writer
      ..writeByte(13)
      ..writeByte(0)
      ..write(obj.meal_id)
      ..writeByte(1)
      ..write(obj.mealName)
      ..writeByte(2)
      ..write(obj.mealCategory)
      ..writeByte(3)
      ..write(obj.mealCalorie)
      ..writeByte(4)
      ..write(obj.protein)
      ..writeByte(5)
      ..write(obj.fat)
      ..writeByte(6)
      ..write(obj.carbs)
      ..writeByte(7)
      ..write(obj.fiber)
      ..writeByte(8)
      ..write(obj.mealAmount)
      ..writeByte(9)
      ..write(obj.totalMealCategoryCalorie)
      ..writeByte(10)
      ..write(obj.totalMealCalorie)
      ..writeByte(11)
      ..write(obj.mealDate)
      ..writeByte(12)
      ..write(obj.mealImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
