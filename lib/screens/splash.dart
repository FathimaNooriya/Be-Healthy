import 'package:flutter/material.dart';
import 'package:healthy/functions/functions.dart';
import 'package:healthy/screens/registration.dart';
import 'package:healthy/theme/colors.dart';
import 'package:healthy/theme/fonds.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    print("goto login");
    goToRegistration();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset("assets/images/logo.png"),
            ),
            Text("Be Healthy", style: AppFonts().headdingWhite)
          ],
        ),
      ),
    );
  }

  Future<void> goToRegistration() async {
    await Future.delayed(Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: ((context) => regisrationPage())));
  }
}
