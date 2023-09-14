import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Historia extends FlutterDeckSlideWidget {
  const Historia()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/historia',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (_) => const Text(''));
  }
}
