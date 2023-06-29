import 'package:flutter/material.dart';
import 'package:healthy/screens/splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'db_functions/admin_meal_db_fn.dart';
import 'models/admin_meal_model.dart';
import 'models/burn_model.dart';
import 'models/cycling_model.dart';
import 'models/meal_model.dart';
import 'models/registration_model.dart';
import 'models/running_model.dart';
import 'models/sleep_model.dart';
import 'models/steps_model.dart';
import 'models/swimming_model.dart';
import 'models/walking_model.dart';
import 'models/weight_model.dart';

const saveKey = "UserLoggedIn";
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(BurnModelAdapter().typeId)) {
    Hive.registerAdapter(BurnModelAdapter());
  }
  if (!Hive.isAdapterRegistered(CyclingModelAdapter().typeId)) {
    Hive.registerAdapter(CyclingModelAdapter());
  }
  if (!Hive.isAdapterRegistered(MealModelAdapter().typeId)) {
    Hive.registerAdapter(MealModelAdapter());
  }
  if (!Hive.isAdapterRegistered(RunningModelAdapter().typeId)) {
    Hive.registerAdapter(RunningModelAdapter());
  }
  if (!Hive.isAdapterRegistered(SleepModelAdapter().typeId)) {
    Hive.registerAdapter(SleepModelAdapter());
  }
  if (!Hive.isAdapterRegistered(StepsModelAdapter().typeId)) {
    Hive.registerAdapter(StepsModelAdapter());
  }
  if (!Hive.isAdapterRegistered(SwimmingModelAdapter().typeId)) {
    Hive.registerAdapter(SwimmingModelAdapter());
  }
  if (!Hive.isAdapterRegistered(WalkingModelAdapter().typeId)) {
    Hive.registerAdapter(WalkingModelAdapter());
  }
  if (!Hive.isAdapterRegistered(WeightModelAdapter().typeId)) {
    Hive.registerAdapter(WeightModelAdapter());
  }
  if (!Hive.isAdapterRegistered(RegistrationModelAdapter().typeId)) {
    Hive.registerAdapter(RegistrationModelAdapter());
  }
  if (!Hive.isAdapterRegistered(AdminMealModelAdapter().typeId)) {
    Hive.registerAdapter(AdminMealModelAdapter());
  }
  openBox();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //darkTheme: ThemeData.dark(),
      theme: ThemeData(brightness: Brightness.dark),
      //   // This is the theme of your application.
      //   //
      //   // TRY THIS: Try running your application with "flutter run". You'll see
      //   // the application has a blue toolbar. Then, without quitting the app,
      //   // try changing the seedColor in the colorScheme below to Colors.green
      //   // and then invoke "hot reload" (save your changes or press the "hot
      //   // reload" button in a Flutter-supported IDE, or press "r" if you used
      //   // the command line to start the app).
      //   //
      //   // Notice that the counter didn't reset back to zero; the application
      //   // state is not lost during the reload. To reset the state, use hot
      //   // restart instead.
      //   //
      //   // This works for code too, not just values: Most code changes can be
      //   // tested with just a hot reload.
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      //   useMaterial3: true,
      // ),
      home: splashScreen(),
    );
  }
}
