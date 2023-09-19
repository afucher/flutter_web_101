import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class FraseFlutterWeb extends FlutterDeckSlideWidget {
  const FraseFlutterWeb()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/frase',
            footer: FlutterDeckFooterConfiguration(showSlideNumbers: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title:
          '“Flutter is the first framework designed architecturally around new and emerging web technologies like CanvasKit and WebAssembly.”',
      subtitle: 'Tim Sneath',
    );
  }
}
