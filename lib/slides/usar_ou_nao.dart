import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class UsarOuNao extends FlutterDeckSlideWidget {
  const UsarOuNao()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/usar-ou-nao',
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      title: 'Usar ou não?',
      subtitle: 'eis a questão',
    );
  }
}
