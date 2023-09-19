import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RodandoProjeto extends FlutterDeckSlideWidget {
  const RodandoProjeto()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/rodando-projeto',
              header: FlutterDeckHeaderConfiguration(title: 'Rodando projeto')),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Center(
        child: FlutterDeckCodeHighlight(
          code: '''
> flutter devices
2 connected devices:

macOS (desktop) • macos  • darwin-x64     • macOS 12.6.8 21G725 darwin-x64
Chrome (web)    • chrome • web-javascript • Google Chrome 116.0.5845.187


> flutter run -d chrome
''',
          language: 'shell',
        ),
      ),
    );
  }
}
