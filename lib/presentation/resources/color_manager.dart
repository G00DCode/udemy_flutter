import 'dart:ui';

class ColorManager {
  static Color purple = HexColor.fromHex("#c62bff");
  static Color blue = HexColor.fromHex("#2c1be9");
  static Color yellow = HexColor.fromHex("#f0bb5d");
  static Color darkGrey = HexColor.fromHex("#525252");
  static Color grey = HexColor.fromHex("#737377");
  static Color lightGrey = HexColor.fromHex("#9E9E9E");
  static Color purpleOpacity70 = HexColor.fromHex("#9e22cc");

  // new colors
  static Color darkPurple = HexColor.fromHex("#8a22cf");
  static Color darkBlue = HexColor.fromHex("#2215b5");
  static Color darkYellow = HexColor.fromHex("#f0b347");
  static Color grey1 = HexColor.fromHex("#707070");
  static Color grey2 = HexColor.fromHex("#797979");
  static Color white = HexColor.fromHex("#ffffff");
  static Color error = HexColor.fromHex("#e61f34"); // red color
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll("#", "");
    if (hexColorString.length == 6) {
      hexColorString = "FF" + hexColorString; // 8 char with opacity 100
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
