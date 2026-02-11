part of 'configs.dart';

class AppTheme {
  static final _core = AppCoreTheme(
    // PRIMARY group
    primary: ColorShades(
      main: const Color(0xFF3B8C63), // primary
      shade100: const Color(0xFFEBF4EF),
      shade200: const Color(0xFFE2EEE8),
      shade300: const Color(0xFFC2DBCF),
      shade500: const Color(0xFF357E59),
      shade600: const Color(0xFF2C694A),
      shade700: const Color(0xFF23543B),
      shade800: const Color(0xFF153123),
    ),

    // ACCENT group
    accent: AccentColors(
      orange: const Color(0xFFFFCC00),
      yellowLight: const Color(0xFFF6FCD4),
      yellow: const Color(0xFFD4EF28),
      purpleLight: const Color(0xFFE8F9F9),
      purple: const Color(0xFFB4ECEB),
      red: const Color(0xFFF65555),
    ),

    // BACKGROUND group
    background: ColorShades(
      shade100: const Color(0xFFFBFBFC), //
      shade200: const Color(0xFFFDFEFE), //
      shade400: const Color(0xFFDCDEDD), //
      shade500: const Color(0xFFC3C6C5), //

      main: const Color(0xFFF6F8FA), // background
    ),

    // TEXT group
    text: ColorShades(
      main: const Color(0xFF818898), // grey
      shade100: const Color(0xFFC1C7D0), //
      shade200: const Color(0xFFA4ACB9), //
      shade300: const Color(0xFF818898), //
      shade600: const Color(0xFF747A89), //
      shade700: const Color(0xFF3A3D44), //
      shade800: const Color(0xFF1B1D1F), //
    ),

    // LIGHT GREY group
    lightGrey: ColorShades(
      main: const Color(0xFFE8E9EC), // lightGrey
      shade300: const Color(0xFFECEFF3), //
      shade200: const Color(0xFFF6F8FA), //
      shade100: const Color(0xFFF8FAFB), //
      shade400: const Color(0xFFD9D9D9), //
      shade500: const Color(0xFF8697AC), //
      shade600: const Color(0xFFE7ECF0), //
    ),

    //Error Group
    error: ColorShades(
      main: Color(0xFFF65555),
      shade100: Color(0xFFFEE6E6),
      shade800: Color(0xFF96132C),
    ),

    // SINGLE COLORS (no shades)
    white: const Color(0xFFFFFFFF), //
    black: const Color(0xFF2B2A2F), //
  );

  static AppCoreTheme light = _core;
  static AppCoreTheme dark = _core;

  static late AppCoreTheme c;

  static bool isDark(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark;

  static void init(BuildContext context) {
    c = isDark(context) ? dark : light;
  }
}
