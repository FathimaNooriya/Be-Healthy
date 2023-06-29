import 'package:flutter/material.dart';
import 'package:healthy/screens/burn_page.dart';
import 'package:healthy/screens/meal.dart';
import 'package:healthy/screens/sleep.dart';
import 'package:healthy/screens/steps.dart';
import 'package:healthy/theme/colors.dart';
import 'package:healthy/theme/fonds.dart';
import 'package:healthy/widgets/home_container.dart';

import '../functions/burn_fn.dart';
import '../functions/functions.dart';
import '../functions/water_fn.dart';
import '../functions/weight_fn.dart';
import 'water.dart';
import 'weight.dart';
import '../widgets/appbar.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors().black,
          body: Column(
            children: [
              appbarWigget(
                appTitle: "Hi Fathima..",
                iconThere: false,
              ),
              // Text(
              //   "Hi Fathima..",
              //   style: AppFonts().headdingWhite,
              // ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "assets/images/meal1.png",
                          height: 170,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: CircularProgressIndicator(
                              backgroundColor: AppColors().orange,
                              color: AppColors().green,
                              strokeWidth: 8,
                              value: .35,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        '''     ${calorieTaken}   of   
 ${dailyCalorieIntake} Cal''',
                        overflow: TextOverflow.ellipsis,
                        style: AppFonts().headding2White,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.2,
                  children: [
                    homeContainer(
                      color: AppColors().blue,
                      image: "assets/images/fire1.png",
                      text: "Burn at least",
                      value: "${targetBurnEnergy}",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => burnScreen(),
                        ));
                      },
                    ),
                    homeContainer(
                      color: AppColors().orange,
                      image: "assets/images/weight.png",
                      text: "Weight in Kg",
                      value: "${currentWeight}",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => weightScreen(),
                        ));
                      },
                    ),
                    homeContainer(
                      color: AppColors().pink,
                      image: "assets/images/water.png",
                      text: "Drink ${waterNeededPerGlass} glass",
                      value: "of water",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => waterScreen(),
                        ));
                      },
                    ),
                    homeContainer(
                      color: AppColors().lavender,
                      image: "assets/images/step.png",
                      text: "Steps walked",
                      value: "5500",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => stepsScreen(),
                        ));
                      },
                    ),
                    homeContainer(
                      color: AppColors().green,
                      image: "assets/images/sleep.png",
                      text: "Sleep in hr",
                      value: "7:30 hr",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => sleepScreen(),
                        ));
                      },
                    ),
                    homeContainer(
                      color: AppColors().yellow,
                      image: "assets/images/meal.png",
                      text: "Last meal",
                      value: "800 Cal",
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => mealScreen(),
                        ));
                      },
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
