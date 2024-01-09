import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.8),
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeInterPrimary => theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w400,
      );
  static get bodyLargePrimary => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
  static get bodyLargeRegular => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  // Headline text style
  static get headlineLargeOnError => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargePrimary => theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get headlineSmallBluegray90001 =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get headlineSmallBluegray90001ExtraBold =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallBluegray90001Regular =>
      theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeBluegray90001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeOnError => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 13.fSize,
      );
  // Title text style
  static get titleLargeBluegray90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleLargeBluegray90001Regular =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeBluegray90002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90002,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeBluegray90002_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.blueGray90002,
      );
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.8),
        fontWeight: FontWeight.w600,
      );
  static get titleLargePrimary22 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 22.fSize,
      );
  static get titleLargePrimary_1 => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleLargeRed400 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red400,
      );
  static get titleLargeRed40003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red40003,
      );
  static get titleLargeRed40004 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red40004,
        fontSize: 22.fSize,
      );
  static get titleLargeRed90004 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red90004,
      );
  static get titleLargeRedA70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.redA70001,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumAmber300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.amber300,
      );
  static get titleMediumBluegray400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 18.fSize,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001.withOpacity(0.8),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray90001SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBluegray90001_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumGreen800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.green800,
      );
  static get titleMediumIndigo600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.indigo600,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.8),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPrimary18 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 18.fSize,
      );
  static get titleMediumPrimary18_1 => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
        fontSize: 18.fSize,
      );
  static get titleMediumPrimaryExtraBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumRed80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red80001,
      );
  static get titleMediumRed900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red900,
        fontSize: 18.fSize,
      );
  static get titleMediumRed90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.red90001,
      );
  static get titleMediumYellow800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow800,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.6),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimarySemiBold => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallPrimary_1 => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary.withOpacity(0.7),
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get nunitoSans {
    return copyWith(
      fontFamily: 'Nunito Sans',
    );
  }
}
