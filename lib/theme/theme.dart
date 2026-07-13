import 'package:flutter/material.dart';
import 'package:sina_app/theme/text_theme.dart';
import 'package:sina_app/theme/color_scheme.dart';
import 'package:sina_app/theme/sina_tokens.dart';

ThemeData sinaLightTheme() {
  final colorScheme = sinaColorSchemeLight();

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    extensions: [SinaTokens.light()],
    textTheme: sinaTextTheme(),
    // TODO: temas de componente (filledButtonTheme, chipTheme, etc.)
  );
}

ThemeData sinaDarkTheme() {
  final colorScheme = sinaColorSchemeDark();

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    extensions: [SinaTokens.dark()],
    textTheme: sinaTextTheme(),
    // TODO: temas de componente (filledButtonTheme, chipTheme, etc.)
  );
}
