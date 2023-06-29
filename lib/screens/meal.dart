import 'package:flutter/material.dart';
import 'package:healthy/screens/addlunch.dart';
import 'package:healthy/theme/fonds.dart';

import '../theme/colors.dart';
import '../widgets/appbar.dart';
import '../widgets/button.dart';
import '../widgets/meal_listtile.dart';
import '../widgets/nutrients.dart';

class mealScreen extends StatelessWidget {
  const mealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: SafeArea(
        child: Column(children: [
          appbarWigget(
            appTitle: "Last meal...",
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
          //       "Last meal...",
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
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios)),
            ],
          ),
          buttonWidget(
              myText: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Breakfast",
                      style: AppFonts().headding2White,
                    ),
                    Text(
                      "682 of 550Cal",
                      style: AppFonts().headding2grey,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_rounded,
                        )),
                  ]),
              buttonColor: AppColors().black),
          Expanded(
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return mealListtile(
                  mealImage: "assets/images/tea.png",
                  mealName: "Tea, 1 cup",
                  mealCalori: "64 Cal",
                );
              },
            ),
          ),
          buttonWidget(
              myText: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      " Lunch",
                      style: AppFonts().headding2White,
                    ),
                    Text(
                      "0 of 620Cal",
                      style: AppFonts().headding2grey,
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => addLunchScreen()));
                        },
                        icon: Icon(
                          Icons.add_circle_rounded,
                        )),
                  ]),
              buttonColor: AppColors().black),
          SizedBox(
            height: 20,
          ),
          buttonWidget(
              myText: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      " Dinner",
                      style: AppFonts().headding2White,
                    ),
                    Text(
                      "0 of 300Cal",
                      style: AppFonts().headding2grey,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_circle_rounded,
                        )),
                  ]),
              buttonColor: AppColors().black),
          SizedBox(
            height: 20,
          ),
          buttonWidget(
              myText: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    nutrientsWidget(
                        nutrientName: "Protein",
                        nutrientValue: "15.1g",
                        nutrientPercent: "105%"),
                    nutrientsWidget(
                        nutrientName: "Fats",
                        nutrientValue: " 10.1g",
                        nutrientPercent: "105%"),
                    nutrientsWidget(
                        nutrientName: "Carbs",
                        nutrientValue: "87.1g",
                        nutrientPercent: "244%"),
                    nutrientsWidget(
                        nutrientName: "Fiber ",
                        nutrientValue: "5.7g",
                        nutrientPercent: "75%"),
                  ],
                ),
              ),
              buttonColor: AppColors().black),
        ]),
      ),
    );
  }
}
