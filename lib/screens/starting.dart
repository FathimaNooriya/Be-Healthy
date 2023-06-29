import 'package:flutter/material.dart';
import 'package:healthy/screens/home.dart';
import 'package:healthy/theme/colors.dart';
import 'package:healthy/theme/fonds.dart';

class startingPage extends StatefulWidget {
  const startingPage({super.key});

  @override
  State<startingPage> createState() => _startingPageState();
}

class _startingPageState extends State<startingPage> {
  @override
  void initState() {
    print("goto login");
    goToHome();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: SafeArea(
          child: Center(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(17),
                child: Text(
                  'Customizing the app for you...',
                  style: AppFonts().headdingWhite,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 400,
                color: AppColors().white,
                child: Image.asset(
                  "assets/images/gifimage.gif",
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }

  Future<void> goToHome() async {
    await Future.delayed(Duration(seconds: 7));
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: ((context) => homeScreen())));
  }
}
