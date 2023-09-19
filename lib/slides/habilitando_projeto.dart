import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class HabilitandoProjeto extends FlutterDeckSlideWidget {
  const HabilitandoProjeto()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/habilitando-projeto',
              header:
                  FlutterDeckHeaderConfiguration(title: 'Criando projeto WEB')),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => const Center(
        child: FlutterDeckCodeHighlight(
          code: '''
> flutter create my_app

> flutter create --platforms web .
''',
          language: 'shell',
        ),
      ),
    );
  }
}
