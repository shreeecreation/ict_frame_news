import 'package:news/src/core/core.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF4e62ad);
  static Color disbaledButtonColor = primaryColor.withOpacity(.3);

  static const Color black = Color.fromARGB(255, 0, 0, 0);
  static const Color transparent = Color(0x00ff0000);

  static const Color splashColor = Color(0xFF101D38);
  static const Color greyColor = Color(0xFFDDDDDD);
  static const Color scaffoldBackground = Color(0xFFF8F9FB);
  static const Color cardColor = Color(0xFFF3F3F3);
  static const Color darkBlue = Color(0xFF101D38);

  //text colors
  static const Color textDark = Color(0xFF222222);
  static const Color priaryTextDark = Color(0xFF4e62ad);
  static const Color textLightDark = Color(0xff666666);
  static const Color textLight = Color(0xFFCFCFCF);
  static const Color textGrey = Color(0xFF999999);
  static const Color shadow = Color(0xFFF4F6F9);
  static const Color textBlue = Color(0xFF3E64D2);
  static const Color lightWhite = Color(0xffD5D5F6);
  static const Color textBlueFile = Color(0XFF0062F5);
  static const Color textYellow = Color(0xFFFFC303);
  static const Color textDarkGrey = Color(0xFF8B8B8B);
  static const Color tileGrey = Color(0xFF8B8B8B);
  static const Color green = Color(0xFF14AE5C);

  //status color
  static const Color statusRed = Color(0xFFD23E3E);
  static const Color statusLightRed = Color(0xFFF9E3E3);
  static const Color statusGreen = Color(0xFF4CD964);
  static const Color statusOrange = Color(0xFFFF9212);
  static const Color success = Color(0xFF0FBB00);

  //default
  static const Color border = Color(0xFFE8E8E8);
  static const Color dashBorder = Color(0xFFABC4F1);
  static const Color white = Color(0xFFFFFFFF);
  static const Color fadedBlack = Color(0x0000000D);
  static const Color dividerColor = Color(0xff7472E0);
  static const Color lightPrimary = Color(0xff09A8C8);
  static const Color lightPink = Color(0xFFFEF3F3);
  static const Color lightYellow = Color(0xFFFFFCF2);
  static const Color lightGreen = Color(0xFFF3FCF2);
  static const Color tileColor = Color(0xFFF8F9FB);

  // dark theme colors
  static const Color scaffoldBackgroundDark = Color(0xFF121212);
  static const Color tileColorDark = Color(0xFF1E1E1E);
  static const Color textGreyDark = Color(0xFFBBBBBB);
  static const Color textDarkTheme = Color(0xFFFFFFFF);
  static const Color dividerColorDark = Color(0xFF333333);

  //Textfield color
  static final context = getIt<AppRouter>().navigatorKey.currentContext;
  static Color textFieldColor = context!.appTheme.inputDecorationTheme.fillColor!;
}
