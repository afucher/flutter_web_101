import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class GoogleEarth extends FlutterDeckSlideWidget {
  const GoogleEarth()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/google-earth',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.image(
        imageBuilder: (_) => Image.asset('images/google_earth_xwitter.png'));
  }
}
