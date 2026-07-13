import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sina_app/theme/color_scheme.dart';

class SinaTokens extends ThemeExtension<SinaTokens> {
  const SinaTokens({
    required this.projectionBorder,
    required this.projectionSurface,
    required this.ledgerUnchargedValue,
    required this.ledgerUnchargedStrike,
    required this.badgeNeutralSurface,
    required this.sheetHandle,
    required this.deltaUp,
    required this.deltaDown,
    required this.tertiaryBorder,
    required this.tertiaryTextDim,
    required this.borderErrorSubtle,
    required this.surfaceInfoTint,
    required this.illustrationStripeA,
    required this.illustrationStripeB,
    required this.scrimAlpha,
    required this.stateHover,
    required this.statePressed,
    required this.disabledContent,
    required this.disabledContainer,
    required this.iconDim,
    required this.labelSection,
    required this.captionLg,
    required this.captionSm,
    required this.numberList,
    required this.numberStat,
  });

  final Color projectionBorder;
  final Color projectionSurface;
  final Color ledgerUnchargedValue;
  final Color ledgerUnchargedStrike;
  final Color badgeNeutralSurface;
  final Color sheetHandle;
  final Color deltaUp;
  final Color deltaDown;
  final Color tertiaryBorder;
  final Color tertiaryTextDim;
  final Color borderErrorSubtle;
  final Color surfaceInfoTint;
  final Color illustrationStripeA;
  final Color illustrationStripeB;
  final double scrimAlpha;
  final double stateHover;
  final double statePressed;
  final double disabledContent;
  final double disabledContainer;
  final double iconDim;
  final TextStyle labelSection;
  final TextStyle captionLg;
  final TextStyle captionSm;
  final TextStyle numberList;
  final TextStyle numberStat;

  factory SinaTokens.light() {
    final colorScheme = sinaColorSchemeLight();

    return SinaTokens(
      projectionBorder: const Color(0xFFC4A667),
      projectionSurface: const Color(0xFFFAF6EC),
      ledgerUnchargedValue: const Color(0xFF909A92),
      ledgerUnchargedStrike: const Color(0xFFC2CBC4),
      badgeNeutralSurface: const Color(0xFFEDF0EC),
      sheetHandle: const Color(0xFFDCE3DD),
      deltaUp: colorScheme.tertiary,
      deltaDown: colorScheme.primary,
      tertiaryBorder: const Color(0xFFE4D3A8),
      tertiaryTextDim: const Color(0xFF7A5A12),
      borderErrorSubtle: const Color(0xFFC9A29C),
      surfaceInfoTint: const Color(0xFFEAF2EC),
      illustrationStripeA: const Color(0xFFEDF0EC),
      illustrationStripeB: const Color(0xFFE2E8E2),
      scrimAlpha: 0.32,
      stateHover: 0.04,
      statePressed: 0.06,
      disabledContent: 0.38,
      disabledContainer: 0.12,
      iconDim: 0.55,
      labelSection: const TextStyle(
        fontFamily: 'InstrumentSans',
        fontWeight: FontWeight.w500,
        fontSize: 11,
        height: 1.0,
        letterSpacing: 1.32,
      ),
      captionLg: const TextStyle(
        fontFamily: 'InstrumentSans',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.4,
      ),
      captionSm: const TextStyle(
        fontFamily: 'InstrumentSans',
        fontWeight: FontWeight.w400,
        fontSize: 11,
        height: 1.4,
      ),
      numberList: const TextStyle(
        fontFamily: 'SpaceGrotesk',
        fontWeight: FontWeight.w600,
        fontSize: 15,
        height: 1.1,
        fontFeatures: [FontFeature.tabularFigures()],
      ),
      numberStat: const TextStyle(
        fontFamily: 'SpaceGrotesk',
        fontWeight: FontWeight.w600,
        fontSize: 19,
        height: 1.1,
        fontFeatures: [FontFeature.tabularFigures()],
      ),
    );
  }

  factory SinaTokens.dark() {
    final colorScheme = sinaColorSchemeDark();

    return SinaTokens(
      projectionBorder: const Color(0xFF4A3F26),
      projectionSurface: const Color(0xFF141310),
      ledgerUnchargedValue: const Color(0xFF4E5B54),
      ledgerUnchargedStrike: const Color(0xFF3A453F),
      badgeNeutralSurface: const Color(0xFF1A2320),
      sheetHandle: const Color(0xFF2E3B35),
      deltaUp: colorScheme.tertiary,
      deltaDown: colorScheme.primary,
      tertiaryBorder: const Color(0xFF4A3F26),
      tertiaryTextDim: const Color(0xFFC9B483),
      borderErrorSubtle: const Color(0xFF5A322F),
      surfaceInfoTint: const Color(0xFF17251F),
      illustrationStripeA: const Color(0xFF151D1A),
      illustrationStripeB: const Color(0xFF131917),
      scrimAlpha: 0.62,
      stateHover: 0.04,
      statePressed: 0.06,
      disabledContent: 0.38,
      disabledContainer: 0.12,
      iconDim: 0.55,
      labelSection: const TextStyle(
        fontFamily: 'InstrumentSans',
        fontWeight: FontWeight.w500,
        fontSize: 11,
        height: 1.0,
        letterSpacing: 1.32,
      ),
      captionLg: const TextStyle(
        fontFamily: 'InstrumentSans',
        fontWeight: FontWeight.w400,
        fontSize: 12,
        height: 1.4,
      ),
      captionSm: const TextStyle(
        fontFamily: 'InstrumentSans',
        fontWeight: FontWeight.w400,
        fontSize: 11,
        height: 1.4,
      ),
      numberList: const TextStyle(
        fontFamily: 'SpaceGrotesk',
        fontWeight: FontWeight.w600,
        fontSize: 15,
        height: 1.1,
        fontFeatures: [FontFeature.tabularFigures()],
      ),
      numberStat: const TextStyle(
        fontFamily: 'SpaceGrotesk',
        fontWeight: FontWeight.w600,
        fontSize: 19,
        height: 1.1,
        fontFeatures: [FontFeature.tabularFigures()],
      ),
    );
  }

  @override
  SinaTokens copyWith({
    Color? projectionBorder,
    Color? projectionSurface,
    Color? ledgerUnchargedValue,
    Color? ledgerUnchargedStrike,
    Color? badgeNeutralSurface,
    Color? sheetHandle,
    Color? deltaUp,
    Color? deltaDown,
    Color? tertiaryBorder,
    Color? tertiaryTextDim,
    Color? borderErrorSubtle,
    Color? surfaceInfoTint,
    Color? illustrationStripeA,
    Color? illustrationStripeB,
    double? scrimAlpha,
    double? stateHover,
    double? statePressed,
    double? disabledContent,
    double? disabledContainer,
    double? iconDim,
    TextStyle? labelSection,
    TextStyle? captionLg,
    TextStyle? captionSm,
    TextStyle? numberList,
    TextStyle? numberStat,
  }) {
    return SinaTokens(
      projectionBorder: projectionBorder ?? this.projectionBorder,
      projectionSurface: projectionSurface ?? this.projectionSurface,
      ledgerUnchargedValue: ledgerUnchargedValue ?? this.ledgerUnchargedValue,
      ledgerUnchargedStrike:
          ledgerUnchargedStrike ?? this.ledgerUnchargedStrike,
      badgeNeutralSurface: badgeNeutralSurface ?? this.badgeNeutralSurface,
      sheetHandle: sheetHandle ?? this.sheetHandle,
      deltaUp: deltaUp ?? this.deltaUp,
      deltaDown: deltaDown ?? this.deltaDown,
      tertiaryBorder: tertiaryBorder ?? this.tertiaryBorder,
      tertiaryTextDim: tertiaryTextDim ?? this.tertiaryTextDim,
      borderErrorSubtle: borderErrorSubtle ?? this.borderErrorSubtle,
      surfaceInfoTint: surfaceInfoTint ?? this.surfaceInfoTint,
      illustrationStripeA: illustrationStripeA ?? this.illustrationStripeA,
      illustrationStripeB: illustrationStripeB ?? this.illustrationStripeB,
      scrimAlpha: scrimAlpha ?? this.scrimAlpha,
      stateHover: stateHover ?? this.stateHover,
      statePressed: statePressed ?? this.statePressed,
      disabledContent: disabledContent ?? this.disabledContent,
      disabledContainer: disabledContainer ?? this.disabledContainer,
      iconDim: iconDim ?? this.iconDim,
      labelSection: labelSection ?? this.labelSection,
      captionLg: captionLg ?? this.captionLg,
      captionSm: captionSm ?? this.captionSm,
      numberList: numberList ?? this.numberList,
      numberStat: numberStat ?? this.numberStat,
    );
  }

  @override
  SinaTokens lerp(ThemeExtension<SinaTokens>? other, double t) {
    if (other is! SinaTokens) {
      return this;
    }

    return SinaTokens(
      projectionBorder: Color.lerp(
        projectionBorder,
        other.projectionBorder,
        t,
      )!,
      projectionSurface: Color.lerp(
        projectionSurface,
        other.projectionSurface,
        t,
      )!,
      ledgerUnchargedValue: Color.lerp(
        ledgerUnchargedValue,
        other.ledgerUnchargedValue,
        t,
      )!,
      ledgerUnchargedStrike: Color.lerp(
        ledgerUnchargedStrike,
        other.ledgerUnchargedStrike,
        t,
      )!,
      badgeNeutralSurface: Color.lerp(
        badgeNeutralSurface,
        other.badgeNeutralSurface,
        t,
      )!,
      sheetHandle: Color.lerp(sheetHandle, other.sheetHandle, t)!,
      deltaUp: Color.lerp(deltaUp, other.deltaUp, t)!,
      deltaDown: Color.lerp(deltaDown, other.deltaDown, t)!,
      tertiaryBorder: Color.lerp(tertiaryBorder, other.tertiaryBorder, t)!,
      tertiaryTextDim: Color.lerp(tertiaryTextDim, other.tertiaryTextDim, t)!,
      borderErrorSubtle: Color.lerp(
        borderErrorSubtle,
        other.borderErrorSubtle,
        t,
      )!,
      surfaceInfoTint: Color.lerp(surfaceInfoTint, other.surfaceInfoTint, t)!,
      illustrationStripeA: Color.lerp(
        illustrationStripeA,
        other.illustrationStripeA,
        t,
      )!,
      illustrationStripeB: Color.lerp(
        illustrationStripeB,
        other.illustrationStripeB,
        t,
      )!,
      scrimAlpha: lerpDouble(scrimAlpha, other.scrimAlpha, t)!,
      stateHover: lerpDouble(stateHover, other.stateHover, t)!,
      statePressed: lerpDouble(statePressed, other.statePressed, t)!,
      disabledContent: lerpDouble(disabledContent, other.disabledContent, t)!,
      disabledContainer: lerpDouble(
        disabledContainer,
        other.disabledContainer,
        t,
      )!,
      iconDim: lerpDouble(iconDim, other.iconDim, t)!,
      labelSection: TextStyle.lerp(labelSection, other.labelSection, t)!,
      captionLg: TextStyle.lerp(captionLg, other.captionLg, t)!,
      captionSm: TextStyle.lerp(captionSm, other.captionSm, t)!,
      numberList: TextStyle.lerp(numberList, other.numberList, t)!,
      numberStat: TextStyle.lerp(numberStat, other.numberStat, t)!,
    );
  }
}
