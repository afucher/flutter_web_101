import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class HabilitandoProjeto extends FlutterDeckSlideWidget {
  const HabilitandoProjeto()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/habilitando-projeto',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (_) => const Text(''));
  }
}
