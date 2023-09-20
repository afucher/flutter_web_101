import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Apresentacoes extends FlutterDeckSlideWidget {
  const Apresentacoes()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/apresentacoes',
              header: FlutterDeckHeaderConfiguration(title: 'Apresentações')),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => FlutterDeckCodeHighlightTheme(
        data: FlutterDeckCodeHighlightThemeData(
          textStyle: FlutterDeckCodeHighlightTheme.of(context).textStyle,
        ),
        child: const Center(
          child: FlutterDeckCodeHighlight(
            code: '''
class Capa extends FlutterDeckSlideWidget {
  const Capa()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/capa',
            footer: FlutterDeckFooterConfiguration(showSlideNumbers: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      backgroundBuilder: (context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('images/dash.png'),
        ],
      ),
      title: 'Introdução ao Flutter Web',
      subtitle: 'TDC-SP 2023',
    );
  }
} ''',
            language: 'dart',
          ),
        ),
      ),
    );
  }
}
