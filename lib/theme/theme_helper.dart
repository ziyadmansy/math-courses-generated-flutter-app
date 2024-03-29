import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onError,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.red90004,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.h),
          ),
          shadowColor: colorScheme.primary,
          elevation: 1,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.transparent,
          side: BorderSide(
            color: appTheme.red90004,
            width: 1.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: appTheme.red90004,
      ),
      dividerTheme: DividerThemeData(
        thickness: 116,
        space: 116,
        color: appTheme.gray400,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray90001.withOpacity(0.6),
          fontSize: 16.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: TextStyle(
          color: appTheme.redA70001,
          fontSize: 14.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray90001.withOpacity(0.6),
          fontSize: 12.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 45.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: appTheme.red900,
          fontSize: 32.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        headlineMedium: TextStyle(
          color: appTheme.blueGray90001,
          fontSize: 26.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 24.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.green800,
          fontSize: 12.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: colorScheme.onError,
          fontSize: 20.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: colorScheme.onError,
          fontSize: 16.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
        titleSmall: TextStyle(
          color: colorScheme.primary.withOpacity(1),
          fontSize: 14.fSize,
          fontFamily: 'Nunito Sans',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0X3F000000),
    primaryContainer: Color(0XFF101426),
    secondaryContainer: Color(0XFF455A64),

    // Error colors
    errorContainer: Color(0XFFA3A3A3),
    onError: Color(0XFFFFFFFF),
    onErrorContainer: Color(0X33232222),

    // On colors(text colors)
    onPrimary: Color(0XFF9E1109),
    onPrimaryContainer: Color(0XFF7787CF),
    onSecondaryContainer: Color(0XFF161312),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber300 => Color(0XFFF3D056);
  Color get amber700 => Color(0XFFF7A300);

  // AmberCc
  Color get amber300Cc => Color(0XCCF3D956);

  // BlueGray
  Color get blueGray100 => Color(0XFFCBCBCB);
  Color get blueGray10001 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF83858D);
  Color get blueGray800 => Color(0XFF323D70);
  Color get blueGray80033 => Color(0X33373D57);
  Color get blueGray900 => Color(0XFF303031);
  Color get blueGray90001 => Color(0XFF313132);
  Color get blueGray90002 => Color(0XFF263238);

  // BlueGrayf
  Color get blueGray5007f => Color(0X7F57669F);

  // Gray
  Color get gray100 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFEFEFEF);
  Color get gray20001 => Color(0XFFE9E6E9);
  Color get gray400 => Color(0XFFC9C9C9);
  Color get gray50 => Color(0XFFF8F7F8);
  Color get gray500 => Color(0XFFACA8AC);
  Color get gray5001 => Color(0XFFFAFAFA);
  Color get gray600 => Color(0XFF6C6C6C);
  Color get gray900 => Color(0XFF252525);
  Color get gray90001 => Color(0XFF382626);

  // Grayf
  Color get gray5007f => Color(0X7FA7A7A7);
  Color get gray6007f => Color(0X7F807979);
  Color get gray6007f01 => Color(0X7F817979);

  // Green
  Color get green800 => Color(0XFF256F2C);
  Color get green900 => Color(0XFF029300);

  // Indigo
  Color get indigo400 => Color(0XFF5365B0);
  Color get indigo600 => Color(0XFF2F47AF);
  Color get indigoA200 => Color(0XFF5C75E5);
  Color get indigoA40000 => Color(0X004664EE);

  // IndigoAD
  Color get indigoA200D8 => Color(0XD8675CE5);

  // LightGreen
  Color get lightGreenA20099 => Color(0X9988F356);

  // Orange
  Color get orange800 => Color(0XFFF06704);

  // Red
  Color get red300 => Color(0XFFC47979);
  Color get red400 => Color(0XFFE5645C);
  Color get red40001 => Color(0XFFC05858);
  Color get red40002 => Color(0XFFE55C5C);
  Color get red40003 => Color(0XFFE5655D);
  Color get red40004 => Color(0XFFEE4646);
  Color get red700 => Color(0XFFC43F3F);
  Color get red800 => Color(0XFFC52525);
  Color get red80001 => Color(0XFFAF2F2F);
  Color get red900 => Color(0XFFB6150C);
  Color get red90001 => Color(0XFF880F09);
  Color get red90002 => Color(0XFFB7150C);
  Color get red90003 => Color(0XFFAE140B);
  Color get red90004 => Color(0XFF860E07);
  Color get redA700 => Color(0XFFED0D0D);
  Color get redA70001 => Color(0XFFEC0C0C);

  // RedCc
  Color get red900Cc => Color(0XCC9E120A);

  // Yellow
  Color get yellow800 => Color(0XFFDAAE10);
  Color get yellowA40099 => Color(0X99FFE500);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
