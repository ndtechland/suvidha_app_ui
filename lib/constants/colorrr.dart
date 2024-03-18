import 'package:flutter/material.dart';

class AppColors {
  //static var themecolors =
  //Color(0xff25D366);
  //Color(0xff8421A6);
  static var themecolors = Color(0xff3bdcf9);

  static var golden = Color(0xffDDB37B);

  static var background = Color(0xffECF0F1);
  static var primaryColor = Color(0xff3847a6);
  static var textfieldColor = Color(0xff8f98d0);

  static Map<int, Color> primaryColorMap = {
    50: Color(0xff7E00FC),
  };
  static MaterialColor primarySwatch =
      MaterialColor(0xff7E00FC, primaryColorMap);

  static Color black = Colors.black;
  static Color white = Colors.white;
  static Color grey400 = Colors.grey.shade400;
  static Color backgroundColor = Color(0xFF3284D6);

  ///
  static var a1 = Color(0xffFFF7F3);
  static var a2 = Color(0xffB7ECFC);
  static var a3 = Color(0xff3E6DA1);
  static var a4 = Color(0xff00BDF2);
  static var a5 = Color(0xff0F4A8A);
  static var a6 = Color(0xff02075D);
  static var a7 = Color(0xff000080);
  static var a8 = Color(0xff00baf2);
  static var a9 = Color(0xff0000FF);
  static var a10 = Color(0xff0000D1);
  static var a11 = Color(0xff000075);
  static var a12 = Color(0xff00baf2);
  static var a13 = Color(0xff011E9E);
  static var a14 = Color(0xff042e6f);
  static var a15 = Color(0xff002d8b);
  static var a16 = Color(0xff009be1);
  static var a17 = Color(0xffB4D4FF);
  static var a18 = Color(0xff86B6F6);
  static var a19 = Color(0xffEEF5FF);
  static var a20 = Color(0xffFEFBF6);

  //F6F5F5

  //EEF5FF

  //86B6F6

  //87CEEB

  //009be1

  //042e6f

  //011E9E

  //#0000FF

  //00baf2

  ///
  static Color g1 = Color(0xff028174);
  static Color g2 = Color(0xff0ab68b);
  static Color g3 = Color(0xff92de8b);
  static Color g4 = Color(0xffffe3b3);

  ///
  static Color g5 = Color(0xff006bbb);
  static Color g6 = Color(0xff30a0e0);
  static Color g7 = Color(0xffffc872);
  static Color g8 = Color(0xffffe3b3);

  ///
  static Color g9 = Color(0xfffab23d);
  // static Color g10 = Color(0xff8421A6);
  //#de9dac
  static Color g10 = Color(0xff3bdcf9);
  //DE5D83

  ///red for g10
  //ff0000
  //7d0000

  ///travel...
  //3bdcf9
  //9cd7e3
  //fc6c8c

  //static Color g10 = Color(0xff89CFF0);

  //COPIED!
  //static Color g10 = Color(0xffffc812);
  //0xffffc872
  //static Color g10 = Color(0xfffab23d);

  static Color g11 = Color(0xff000000);
  static Color g12 = Color(0xff262626);
  static Color g13 = Color(0xff383838);
  static Color g14 = Color(0xfffbfffe);

  ///purple
  static Color pdeeep = Color(0xff800080);
  static Color plight = Color(0xffffc0cb);
  static Color p3 = Color(0xff0000ff);
  static Color p4 = Color(0xff262626);
  static Color p5 = Color(0xff383838);
  static Color p6 = Color(0xfffbfffe);
}

LinearGradient gradient1 = LinearGradient(
  colors: [Color.fromRGBO(53, 68, 147, 1), Color.fromRGBO(18, 33, 90, 1)],
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
);

LinearGradient gradient2 = LinearGradient(
  colors: [Color.fromRGBO(53, 67, 163, 1), Color.fromRGBO(85, 101, 189, 1)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
LinearGradient gradient3 = LinearGradient(
    colors: [Color(0xff52abd0), Color(0xfff0c5df)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter);

LinearGradient gradient4 = LinearGradient(
    colors: [Color(0xff52abd0), Color(0xfff0c5df)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight);

LinearGradient gradient5 = LinearGradient(
  colors: [Color(0xfffb96f5), Color(0xfff3f3f3)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
