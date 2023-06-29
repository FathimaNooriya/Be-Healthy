import 'package:flutter/material.dart';
import 'package:healthy/screens/weightGoal.dart';
import 'package:healthy/widgets/button.dart';

import '../functions/weight_fn.dart';
import '../theme/colors.dart';
import '../theme/fonds.dart';
import '../widgets/appbar.dart';
import '../widgets/bargraph.dart';

class weightScreen extends StatelessWidget {
  const weightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors().black,
        body: Column(
          children: [
            appbarWigget(
              appTitle: "Weight...",
              iconThere: true,
            ),
            SizedBox(
              height: 35,
            ),
            buttonWidget(
                myText: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListTile(
                    leading: Image.asset("assets/images/weight11.png"),
                    title: Text(
                      "Lose 10 kg",
                      style: AppFonts().headding2White,
                    ),
                    subtitle: Text(
                      "40 weeks remaining",
                      style: AppFonts().normalTextWhite,
                    ),
                    trailing: SizedBox(
                      width: 70,
                      child: buttonWidget(
                        buttonColor: AppColors().white,
                        myText: Text(
                          "Edit",
                          style: AppFonts().normalTextBlack,
                        ),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => weightGoalScreen(),
                      ));
                    },
                  ),
                ),
                buttonColor: AppColors().black),
            SizedBox(
              height: 20,
            ),
            buttonWidget(
                myText: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Weight",
                        style: AppFonts().headding2black,
                      ),
                      IconButton(
                          onPressed: () {
                            addWeight = true;
                            weightInaDay();
                          },
                          icon: Icon(
                            Icons.add_circle_rounded,
                          )),
                      Text(
                        "${todaysWeight}",
                        style: AppFonts().headding2black,
                      ),
                      IconButton(
                          onPressed: () {
                            weightInaDay();
                          },
                          icon: Icon(Icons.remove_circle_rounded)),
                    ]),
                buttonColor: AppColors().blue),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 250,
              width: 300,
              //color: AppColors().pink,
              child: BarGraphWidget(),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Timeline",
              style: AppFonts().headding2White,
            ),
            buttonWidget(
              buttonColor: AppColors().black,
              myText: ListTile(
                title: Text(
                  "Lose 10 kg",
                  style: AppFonts().headding2White,
                ),
                subtitle: Text(
                  "02 Jun 2023",
                  style: AppFonts().normalTextWhite,
                ),
                trailing: Icon(Icons.account_box_outlined),
              ),
            )
          ],
        ),
      ),
    );
  }
}
