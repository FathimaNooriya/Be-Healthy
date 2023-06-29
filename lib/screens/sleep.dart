import 'package:flutter/material.dart';
import 'package:healthy/widgets/button.dart';

import '../theme/colors.dart';
import '../theme/fonds.dart';
import '../widgets/appbar.dart';

class sleepScreen extends StatelessWidget {
  const sleepScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: SafeArea(
        child: Column(
          children: [
            appbarWigget(
               appTitle: "Sleep...",
            iconThere: true,
            ),
            // Row(
            //   children: [
            //     IconButton(
            //         onPressed: () {
            //           Navigator.of(context).pop();
            //         },
            //         icon: Icon(Icons.arrow_back)),
            //     Text(
            //       "Sleep...",
            //       style: AppFonts().headdingWhite,
            //     ),
            //   ],
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
                Text(
                  "Today",
                  style: AppFonts().headding2White,
                ),
                IconButton(
                    onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
              ],
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 40,
                width: 70,
                child: buttonWidget(
                    buttonColor: AppColors().white,
                    myText: Text(
                      "Edit",
                      style: AppFonts().normalTextBlack,
                    )),
              ),
            ),
            buttonWidget(
                myText: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Sleep Performance",
                          style: AppFonts().headding2White,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundColor: AppColors().lavender,
                            radius: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 30,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "5:30",
                                    style: AppFonts().headding2White,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: AppColors().white,
                            radius: 55,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 50,
                                child: Text(
                                  "80%",
                                  style: AppFonts().headding2White,
                                ),
                              ),
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: AppColors().lavender,
                            radius: 35,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 30,
                                child: Text(
                                  "7:30",
                                  style: AppFonts().headding2White,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hours of sleep",
                            style: AppFonts().headding2grey,
                          ),
                          Text(
                            "Hours of sleep",
                            style: AppFonts().headding2grey,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                buttonColor: AppColors().black),
            buttonWidget(
              buttonColor: AppColors().black,
              myText: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: buttonWidget(
                          buttonColor: AppColors().blue,
                          myText: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.add_circle_rounded,
                                    )),
                                Text(
                                  "5:30",
                                  style: AppFonts().headding2black,
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove_circle_rounded),
                                ),
                              ]),
                        ),
                      ),
                      Image.asset(
                        "assets/images/sleep2.png",
                        height: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            buttonWidget(
                myText: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "10:30 hr Remaining for next bed",
                    style: AppFonts().headding2White,
                  ),
                ),
                buttonColor: AppColors().black),
            buttonWidget(
                myText: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        "Alarm",
                        style: AppFonts().headding2White,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Switch(value: true, onChanged: (value) {}),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 150,
                            child: buttonWidget(
                                myText: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "Set Alarm",
                                    style: AppFonts().headding2black,
                                  ),
                                ),
                                buttonColor: AppColors().lavender2),
                          ),
                          SizedBox(
                            width: 150,
                            child: buttonWidget(
                                myText: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    "Bed Time",
                                    style: AppFonts().headding2black,
                                  ),
                                ),
                                buttonColor: AppColors().lavender2),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                buttonColor: AppColors().black)
          ],
        ),
      ),
    );
  }
}
