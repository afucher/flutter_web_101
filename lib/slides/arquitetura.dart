import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Arquitetura extends FlutterDeckSlideWidget {
  const Arquitetura()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/arquitetura',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (_) => const Text(''));
  }
}
