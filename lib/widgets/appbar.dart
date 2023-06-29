import 'package:flutter/material.dart';

import '../theme/fonds.dart';

class appbarWigget extends StatelessWidget {
  const appbarWigget(
      {super.key, required this.appTitle, required this.iconThere});
  final String appTitle;
  final bool iconThere;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: AppBar(
        backgroundColor: Color.fromARGB(255, 22, 0, 32),
        leading: iconThere
            ? IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back))
            : SizedBox(),
        title: Text(
          appTitle,
          style: AppFonts().headdingWhite,
        ),
      ),
    );
  }
}
