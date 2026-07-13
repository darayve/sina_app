import 'package:flutter/material.dart';

TextTheme sinaTextTheme() {
  return const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'SpaceGrotesk',
      fontWeight: FontWeight.w600,
      fontSize: 40,
      height: 1.02,
      fontFeatures: [FontFeature.tabularFigures()],
    ), // display.hero - total mensal na Home
    headlineMedium: TextStyle(
      fontFamily: 'SpaceGrotesk',
      fontWeight: FontWeight.w600,
      fontSize: 26,
      height: 1.0,
      fontFeatures: [FontFeature.tabularFigures()],
    ), // hero - valor no Detalhe
    titleLarge: TextStyle(
      fontFamily: 'InstrumentSans',
      fontWeight: FontWeight.w600,
      fontSize: 20,
      height: 1.1,
    ), // title.lg - marca Home
    titleSmall: TextStyle(
      fontFamily: 'InstrumentSans',
      fontWeight: FontWeight.w600,
      fontSize: 17,
      height: 1.1,
    ), // title.sm - título de app bar interna
    bodyLarge: TextStyle(
      fontFamily: 'InstrumentSans',
      fontWeight: FontWeight.w400,
      fontSize: 15,
      height: 1.5,
    ), // body.lg - corpo, valor de input
    bodySmall: TextStyle(
      fontFamily: 'InstrumentSans',
      fontWeight: FontWeight.w400,
      fontSize: 13,
      height: 1.5,
    ), // body.sm - label de input
    labelLarge: TextStyle(
      fontFamily: 'InstrumentSans',
      fontWeight: FontWeight.w600,
      fontSize: 14,
      height: 1.0,
    ), // control.lg - botões
    labelSmall: TextStyle(
      fontFamily: 'InstrumentSans',
      fontWeight: FontWeight.w600,
      fontSize: 12,
      height: 1.0,
    ), // control.sm - chips
  );
}
