

import 'package:flutter/cupertino.dart';

class AppColors{
  static const Color primaryColor = Color(0xff43328B);
  static const Color black = Color(0xff070709);
  static const Color white = Color(0xffE5E5E5);
  static const Color blue = Color(0xffC1D7AE);
  static const Color pink = Color(0xffE9DCEE);
  static const Color bluewhite = Color.fromARGB(255, 129, 165, 200);
  static const LinearGradient primaryApp = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment(0.8, 1.5),
    colors: <Color>[
      white,
      primaryColor,
    ],
  );
}