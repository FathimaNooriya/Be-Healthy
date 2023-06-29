import 'package:flutter/material.dart';
import 'package:healthy/theme/colors.dart';
import 'package:healthy/widgets/appbar.dart';
import 'package:healthy/widgets/button.dart';

class addLunchScreen extends StatelessWidget {
  const addLunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors().black,
          body: ListView(
            children: [
              appbarWigget(
                appTitle: "AddLunch",
                iconThere: true,
              ),
              SizedBox(
                height: 10,
              ),
              buttonWidget(myText: TextField(), buttonColor: AppColors().black),
              SizedBox(
                height: 10,
              ),
              buttonWidget(
                  myText: ListTile(
                    title: Text("Tea"),
                    subtitle: Text("100 cal/glass"),
                    trailing: Image.asset("assets/images/tea.png"),
                  ),
                  buttonColor: AppColors().black)
            ],
          )),
    );
  }
}
