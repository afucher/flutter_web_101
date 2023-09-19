import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class AssuntoDeHoje extends FlutterDeckSlideWidget {
  const AssuntoDeHoje()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/assunto-de-hoje',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'Introdução ao Flutter Web',
      subtitle: 'Minha vez de conhecer vocês...',
    );
  }
}
