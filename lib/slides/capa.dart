import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Capa extends FlutterDeckSlideWidget {
  const Capa()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/capa',
            footer: FlutterDeckFooterConfiguration(showSlideNumbers: true),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.title(
      backgroundBuilder: (context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset('images/dash.png'),
        ],
      ),
      title: 'Introdução ao Flutter Web',
      subtitle: 'Meetup - The Bridge Social',
    );
  }
}
