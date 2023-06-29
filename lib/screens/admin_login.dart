import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy/theme/fonds.dart';

import '../functions/admin_functions.dart';
import '../theme/colors.dart';
import '../theme/text_field.dart';
import '../widgets/appbar.dart';
import '../widgets/button.dart';

class adminLogin extends StatelessWidget {
  const adminLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: SafeArea(
        child: Form(
          key: formkeyAdminLogin,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Expanded(
            child: ListView(children: [
              //    ChoiceChip(label: , selected: selected),
              appbarWigget(
                appTitle: "Admin...",
                iconThere: false,
              ),
              SizedBox(
                height: 200,
              ),
              buttonWidget(
                buttonColor: AppColors().black,
                myText:
                    //  TextFormField(
                    //   controller: adminUsername,
                    //   validator: (value) {
                    //     if (adminUsername.text.isEmpty) {
                    //       return "Please Enter the user name";
                    //     }
                    //     //   userNameValidation();
                    //   },
                    // )
                    textFieldWidget(
                        number: false,
                        hintText: "UserName",
                        controller: adminUsername,
                        validator: (value) {
                          if (adminUsername.text.isEmpty) {
                            return "Please Enter the user name";
                          }
                        }),
              ),
              SizedBox(
                height: 20,
              ),
              buttonWidget(
                buttonColor: AppColors().black,
                myText:
                    //  TextFormField(
                    //   controller: adminPassword,
                    //   validator: (value) {
                    //     if (adminPassword.text.isEmpty) {
                    //       return "Please Enter the password";
                    //       // } else {
                    //       //   return null;
                    //     }

                    //     //passwordValidation();
                    //   },
                    // )
                    textFieldWidget(
                        number: false,
                        hintText: "Password",
                        controller: adminPassword,
                        validator: (value) {
                          if (adminPassword.text.isEmpty) {
                            return "Please Enter the password";
                            // } else {
                            //   return null;
                          }
                        }),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: InkWell(
                  child: buttonWidget(
                    buttonColor: AppColors().grey,
                    myText: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "Login",
                        style: AppFonts().normalTextWhite,
                      ),
                    ),
                  ),
                  onTap: () {
                    adminlogin(context);
                    
                  },
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
