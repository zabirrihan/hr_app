import 'package:flutter/cupertino.dart';
import 'package:hr_app/src/theme/app_theme.dart';

class Utils {
  static double windowHeight(BuildContext context) {
    return (MediaQuery.of(context).size.height / 812);
  }

  static double windowWidth(BuildContext context) {
    return (MediaQuery.of(context).size.width / 375);
  }

  static TextStyle style(
      double size, int height, Color color, FontWeight weight) {
    return TextStyle(
      color: color,
      fontSize: size,
      height: height / size,
      fontWeight: weight,
      fontFamily: AppTheme.fontFaomily,
    );
  }
}

getDate(int month) {
  switch (month) {
    case 1:
      return "Jan";
    case 2:
      return "Feb";
    case 3:
      return "March";
    case 4:
      return "Apr";
    case 5:
      return "May";
    case 6:
      return "June";
    case 7:
      return "July";
    case 8:
      return "Aug";
    case 9:
      return "Sep";
    case 10:
      return "Oct";
    case 11:
      return "Noc";
    case 12:
      return "Dec";
  }
}
