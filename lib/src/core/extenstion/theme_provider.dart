import 'package:news/src/core/core.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum ThemeEnum { DARK, LIGHT }

class ThemeManager extends ChangeNotifier implements IThemeManager {
  static ThemeManager? _instance;
  static ThemeManager get instance {
    _instance ??= ThemeManager._init();
    return _instance!;
  }

  ThemeManager._init() {
    _loadThemeFromPreferences();
  }

  @override
  ThemeData currentTheme = ThemeEnum.LIGHT.generateTheme;
  @override
  ThemeEnum currentThemeEnum = ThemeEnum.LIGHT;

  static const String themeKey = 'theme_key';

  Future<void> _loadThemeFromPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final themeString = prefs.getString(themeKey) ?? 'LIGHT';
    currentThemeEnum = ThemeEnum.values.firstWhere((e) => e.toString().split('.').last == themeString, orElse: () => ThemeEnum.LIGHT);
    currentTheme = currentThemeEnum.generateTheme;
    notifyListeners();
  }

  Future<void> _saveThemeToPreferences(ThemeEnum themeEnum) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(themeKey, themeEnum.toString().split('.').last);
  }

  @override
  void changeTheme(ThemeEnum newTheme) {
    if (newTheme != currentThemeEnum) {
      currentTheme = newTheme.generateTheme;
      currentThemeEnum = newTheme;
      notifyListeners();
      _saveThemeToPreferences(newTheme);
    }
  }
}

extension ThemeEnumExtension on ThemeEnum {
  ThemeData get generateTheme {
    switch (this) {
      case ThemeEnum.LIGHT:
        return AppTheme.instance.lightTheme;
      case ThemeEnum.DARK:
        return AppTheme.instance.darkTheme;
      default:
        return AppTheme.instance.darkTheme;
    }
  }
}

abstract class IThemeManager {
  late ThemeData currentTheme;
  late ThemeEnum currentThemeEnum;

  void changeTheme(ThemeEnum theme);
}
