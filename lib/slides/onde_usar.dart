import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class OndeUsar extends FlutterDeckSlideWidget {
  const OndeUsar()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/onde-usar',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (_) => const Text(''));
  }
}
