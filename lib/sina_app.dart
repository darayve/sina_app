import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sina_app/debug/token_gallery_screen.dart';
import 'package:sina_app/theme/theme.dart';

class SinaApp extends StatelessWidget {
  const SinaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sina.',
      theme: sinaLightTheme(),
      darkTheme: sinaDarkTheme(),
      themeMode: ThemeMode.system,
      home: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Hello, Sina!'),
            if (kDebugMode) ...[
              const SizedBox(height: 16),
              FilledButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (_) => const TokenGalleryScreen(),
                    ),
                  );
                },
                child: const Text('Abrir galeria de tokens'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
