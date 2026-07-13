import 'package:flutter/material.dart';

import 'color_scheme.dart';
import 'sina_tokens.dart';

ThemeData sinaLightTheme() {
  final colorScheme = sinaColorSchemeLight();

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    extensions: [SinaTokens.light()],
    // TODO: textTheme
    // TODO: temas de componente (filledButtonTheme, chipTheme, etc.)
  );
}

ThemeData sinaDarkTheme() {
  final colorScheme = sinaColorSchemeDark();

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    extensions: [SinaTokens.dark()],
    // TODO: textTheme
    // TODO: temas de componente (filledButtonTheme, chipTheme, etc.)
  );
}
