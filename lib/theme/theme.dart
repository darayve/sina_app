import 'package:flutter/material.dart';
import 'package:sina_app/theme/text_theme.dart';
import 'package:sina_app/theme/color_scheme.dart';
import 'package:sina_app/theme/sina_tokens.dart';

ThemeData sinaLightTheme() {
  final colorScheme = sinaColorSchemeLight();
  final sinaTokens = SinaTokens.light();

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    extensions: [SinaTokens.light()],
    textTheme: sinaTextTheme(),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.onSurface.withValues(
              alpha: sinaTokens.disabledContainer,
            );
          }

          return colorScheme.primary;
        }),
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.onSurface.withValues(
              alpha: sinaTokens.disabledContent,
            );
          }

          return colorScheme.onPrimary;
        }),
        overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return colorScheme.onSurface.withValues(
              alpha: sinaTokens.statePressed,
            );
          } else if (states.contains(WidgetState.hovered)) {
            return colorScheme.onSurface.withValues(
              alpha: sinaTokens.stateHover,
            );
          }

          return null;
        }),
        side: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.focused)) {
            return BorderSide(color: colorScheme.primary, width: 1.5);
          }

          return BorderSide(color: colorScheme.outline, width: 1.0);
        }),
      ),
    ),
    chipTheme: ChipThemeData(selectedColor: colorScheme.primaryContainer),
  );
}

ThemeData sinaDarkTheme() {
  final colorScheme = sinaColorSchemeDark();
  final sinaTokens = SinaTokens.dark();

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    extensions: [SinaTokens.dark()],
    textTheme: sinaTextTheme(),
    filledButtonTheme: FilledButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.onSurface.withValues(
              alpha: sinaTokens.disabledContainer,
            );
          }

          return colorScheme.primary;
        }),
        foregroundColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.disabled)) {
            return colorScheme.onSurface.withValues(
              alpha: sinaTokens.disabledContent,
            );
          }

          return colorScheme.onPrimary;
        }),
        overlayColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.pressed)) {
            return colorScheme.onSurface.withValues(
              alpha: sinaTokens.statePressed,
            );
          } else if (states.contains(WidgetState.hovered)) {
            return colorScheme.onSurface.withValues(
              alpha: sinaTokens.stateHover,
            );
          }

          return null;
        }),
        side: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.focused)) {
            return BorderSide(color: colorScheme.primary, width: 1.5);
          }

          return BorderSide(color: colorScheme.outline, width: 1.0);
        }),
      ),
    ),
    chipTheme: ChipThemeData(selectedColor: colorScheme.primaryContainer),
  );
}
