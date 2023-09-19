import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_web_101/widgets/shader.dart';

class OndeUsarJogos extends FlutterDeckSlideWidget {
  const OndeUsarJogos()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/onde-usar-jogos',
              header: FlutterDeckHeaderConfiguration(
                  title: 'Jogos (Flutter Casual Games Toolkit)')),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (BuildContext context) => const Shader(),
    );
  }
}
