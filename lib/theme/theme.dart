import 'package:flutter/material.dart';

import 'package:flutterfoodappbase/constants/constants.dart';

ThemeData buildThemeData() {
  return ThemeData(
    primaryColor: kAccentColor,
    scaffoldBackgroundColor: kBgColor,
    fontFamily: "SF Pro Text",
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}
