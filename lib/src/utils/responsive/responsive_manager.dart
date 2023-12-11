import 'package:flutter/cupertino.dart';

class ResponsiveScreenManager {
  static const double defaultPortraitSize = 0.024;
  static const double defaultLandScapeSize = 0.024;

  static double screenWidth = 0.0;
  static double screenHigh = 0.0;
  static double defaultSize = 0.0;
  static double topPadding = 0.0;
  static Orientation orientation = Orientation.portrait;

  static void init(BuildContext context) {
    topPadding = MediaQuery.of(context).viewPadding.top;
    screenWidth = MediaQuery.of(context).size.width;
    screenHigh = MediaQuery.of(context).size.height;
    orientation = MediaQuery.of(context).orientation;

    defaultSize = orientation == Orientation.landscape
        ? screenHigh * defaultLandScapeSize
        : screenWidth * defaultPortraitSize;
  }
}
