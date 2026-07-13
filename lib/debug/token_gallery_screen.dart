// lib/debug/token_gallery_screen.dart

import 'package:flutter/material.dart';
import 'package:sina_app/theme/sina_tokens.dart';
import 'package:sina_app/theme/theme.dart';

class TokenGalleryScreen extends StatefulWidget {
  const TokenGalleryScreen({super.key});

  @override
  State<TokenGalleryScreen> createState() => _TokenGalleryScreenState();
}

class _TokenGalleryScreenState extends State<TokenGalleryScreen> {
  ThemeMode _themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _themeMode == ThemeMode.light ? sinaLightTheme() : sinaDarkTheme(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Token Gallery'),
          actions: [
            IconButton(
              icon: const Icon(Icons.brightness_6),
              onPressed: () {
                setState(() {
                  _themeMode = _themeMode == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
                });
              },
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const _SectionTitle('ColorScheme'),
            _ColorSwatch('primary', Theme.of(context).colorScheme.primary),
            _ColorSwatch('onPrimary', Theme.of(context).colorScheme.onPrimary),
            _ColorSwatch(
              'primaryContainer',
              Theme.of(context).colorScheme.primaryContainer,
            ),
            _ColorSwatch(
              'onPrimaryContainer',
              Theme.of(context).colorScheme.onPrimaryContainer,
            ),
            _ColorSwatch('tertiary', Theme.of(context).colorScheme.tertiary),
            _ColorSwatch(
              'tertiaryContainer',
              Theme.of(context).colorScheme.tertiaryContainer,
            ),
            _ColorSwatch('error', Theme.of(context).colorScheme.error),
            _ColorSwatch(
              'errorContainer',
              Theme.of(context).colorScheme.errorContainer,
            ),
            _ColorSwatch('surface', Theme.of(context).colorScheme.surface),
            _ColorSwatch(
              'surfaceContainer',
              Theme.of(context).colorScheme.surfaceContainer,
            ),
            _ColorSwatch(
              'surfaceContainerHigh',
              Theme.of(context).colorScheme.surfaceContainerHigh,
            ),
            _ColorSwatch('onSurface', Theme.of(context).colorScheme.onSurface),
            _ColorSwatch(
              'onSurfaceVariant',
              Theme.of(context).colorScheme.onSurfaceVariant,
            ),
            _ColorSwatch('outline', Theme.of(context).colorScheme.outline),
            _ColorSwatch(
              'outlineVariant',
              Theme.of(context).colorScheme.outlineVariant,
            ),
            _ColorSwatch('scrim', Theme.of(context).colorScheme.scrim),

            const SizedBox(height: 24),
            const _SectionTitle('SinaTokens: cores'),
            _ColorSwatch(
              'projectionBorder',
              Theme.of(context).extension<SinaTokens>()!.projectionBorder,
            ),
            _ColorSwatch(
              'projectionSurface',
              Theme.of(context).extension<SinaTokens>()!.projectionSurface,
            ),
            _ColorSwatch(
              'ledgerUnchargedValue',
              Theme.of(context).extension<SinaTokens>()!.ledgerUnchargedValue,
            ),
            _ColorSwatch(
              'ledgerUnchargedStrike',
              Theme.of(context).extension<SinaTokens>()!.ledgerUnchargedStrike,
            ),
            _ColorSwatch(
              'badgeNeutralSurface',
              Theme.of(context).extension<SinaTokens>()!.badgeNeutralSurface,
            ),
            _ColorSwatch(
              'sheetHandle',
              Theme.of(context).extension<SinaTokens>()!.sheetHandle,
            ),
            _ColorSwatch(
              'deltaUp',
              Theme.of(context).extension<SinaTokens>()!.deltaUp,
            ),
            _ColorSwatch(
              'deltaDown',
              Theme.of(context).extension<SinaTokens>()!.deltaDown,
            ),
            _ColorSwatch(
              'tertiaryBorder',
              Theme.of(context).extension<SinaTokens>()!.tertiaryBorder,
            ),
            _ColorSwatch(
              'tertiaryTextDim',
              Theme.of(context).extension<SinaTokens>()!.tertiaryTextDim,
            ),
            _ColorSwatch(
              'borderErrorSubtle',
              Theme.of(context).extension<SinaTokens>()!.borderErrorSubtle,
            ),
            _ColorSwatch(
              'surfaceInfoTint',
              Theme.of(context).extension<SinaTokens>()!.surfaceInfoTint,
            ),
            _ColorSwatch(
              'illustrationStripeA',
              Theme.of(context).extension<SinaTokens>()!.illustrationStripeA,
            ),
            _ColorSwatch(
              'illustrationStripeB',
              Theme.of(context).extension<SinaTokens>()!.illustrationStripeB,
            ),

            const SizedBox(height: 24),
            const _SectionTitle('SinaTokens: escalares'),
            _ScalarSwatch(
              'scrimAlpha',
              Theme.of(context).extension<SinaTokens>()!.scrimAlpha,
            ),
            _ScalarSwatch(
              'stateHover',
              Theme.of(context).extension<SinaTokens>()!.stateHover,
            ),
            _ScalarSwatch(
              'statePressed',
              Theme.of(context).extension<SinaTokens>()!.statePressed,
            ),
            _ScalarSwatch(
              'disabledContent',
              Theme.of(context).extension<SinaTokens>()!.disabledContent,
            ),
            _ScalarSwatch(
              'disabledContainer',
              Theme.of(context).extension<SinaTokens>()!.disabledContainer,
            ),
            _ScalarSwatch(
              'iconDim',
              Theme.of(context).extension<SinaTokens>()!.iconDim,
            ),

            const SizedBox(height: 24),
            const _SectionTitle('TextTheme'),
            _TextSwatch(
              'displayLarge (display.hero)',
              Theme.of(context).textTheme.displayLarge,
            ),
            _TextSwatch(
              'headlineMedium (hero)',
              Theme.of(context).textTheme.headlineMedium,
            ),
            _TextSwatch(
              'titleLarge (title.lg)',
              Theme.of(context).textTheme.titleLarge,
            ),
            _TextSwatch(
              'titleSmall (title.sm)',
              Theme.of(context).textTheme.titleSmall,
            ),
            _TextSwatch(
              'bodyLarge (body.lg)',
              Theme.of(context).textTheme.bodyLarge,
            ),
            _TextSwatch(
              'bodySmall (body.sm)',
              Theme.of(context).textTheme.bodySmall,
            ),
            _TextSwatch(
              'labelLarge (control.lg)',
              Theme.of(context).textTheme.labelLarge,
            ),
            _TextSwatch(
              'labelSmall (control.sm)',
              Theme.of(context).textTheme.labelSmall,
            ),

            const SizedBox(height: 24),
            const _SectionTitle('SinaTokens: texto'),
            _TextSwatch(
              'labelSection',
              Theme.of(context).extension<SinaTokens>()!.labelSection,
            ),
            _TextSwatch(
              'captionLg',
              Theme.of(context).extension<SinaTokens>()!.captionLg,
            ),
            _TextSwatch(
              'captionSm',
              Theme.of(context).extension<SinaTokens>()!.captionSm,
            ),
            _TextSwatch(
              'numberList',
              Theme.of(context).extension<SinaTokens>()!.numberList,
            ),
            _TextSwatch(
              'numberStat',
              Theme.of(context).extension<SinaTokens>()!.numberStat,
            ),

            const SizedBox(height: 24),
            const _SectionTitle('Componentes'),
            const SizedBox(height: 8),
            FilledButton(
              onPressed: () {},
              child: const Text('Botão habilitado: segura pra ver pressed'),
            ),
            const SizedBox(height: 8),
            const FilledButton(onPressed: null, child: Text('Botão disabled')),
            const SizedBox(height: 8),
            FilterChip(
              label: const Text('Chip selecionado'),
              selected: true,
              onSelected: (_) {},
            ),
          ],
        ),
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  const _SectionTitle(this.text);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(text, style: Theme.of(context).textTheme.titleLarge),
    );
  }
}

class _ColorSwatch extends StatelessWidget {
  const _ColorSwatch(this.name, this.color);
  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Theme.of(context).colorScheme.outline),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          const SizedBox(width: 12),
          Text(name),
        ],
      ),
    );
  }
}

class _ScalarSwatch extends StatelessWidget {
  const _ScalarSwatch(this.name, this.value);
  final String name;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).colorScheme.onSurface.withValues(alpha: value),
              border: Border.all(color: Theme.of(context).colorScheme.outline),
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          const SizedBox(width: 12),
          Text('$name: $value'),
        ],
      ),
    );
  }
}

class _TextSwatch extends StatelessWidget {
  const _TextSwatch(this.name, this.style);
  final String name;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        '$name: Sina 19,90',
        style: style?.copyWith(color: Theme.of(context).colorScheme.onSurface),
      ),
    );
  }
}
