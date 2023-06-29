import 'package:flutter/material.dart';
import 'package:healthy/theme/colors.dart';
import 'package:healthy/theme/text_field.dart';
import 'package:healthy/widgets/appbar.dart';
import 'package:healthy/widgets/button.dart';

import '../functions/functions.dart';

class AdminLoceer extends StatelessWidget {
  const AdminLoceer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().black,
        body: Column(children: [
          appbarWigget(
            appTitle: "Admin Login",
            iconThere: true,
          ),
          SizedBox(
            height: 35,
          ),
          buttonWidget(
            buttonColor: AppColors().black,
            myText: textFieldWidget(
                number: false,
                hintText: "Username?",
                controller: nameController,
                validator: (value) {
                  
                }),
          ),
          SizedBox(
            height: 20,
          ),
          buttonWidget(
            buttonColor: AppColors().black,
            myText: textFieldWidget(
                number: false,
                hintText: "Password",
                controller: nameController,
                validator: (value) {}),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: buttonWidget(
              buttonColor: AppColors().black,
              myText: Text("Login"),
            ),
          ),
        ]),
      ),
    );
  }
}
