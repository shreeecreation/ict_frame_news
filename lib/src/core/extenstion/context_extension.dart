import 'package:flutter/services.dart';
import 'package:news/src/core/core.dart';

import 'theme_provider.dart';


extension BuildContextX on BuildContext {
  ThemeData get appTheme => watch<ThemeManager>().currentTheme;

  TextTheme get textTheme => Theme.of(this).textTheme;

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  void showSnackbar({
    required String message,
    bool error = false,
    Color snakcbarColor = AppColors.primaryColor,
  }) {
    HapticFeedback.lightImpact();
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: SnackbarWidget(
            title: message,
            message: message,
            error: error,
          ),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: 10.rounded,
          ),
          backgroundColor: error ? AppColors.statusLightRed : snakcbarColor,
          padding: EdgeInsets.zero,
          elevation: 0,
          duration: const Duration(seconds: 3),
          margin: EdgeInsets.all(20.r),
        ),
      );
  }
}
