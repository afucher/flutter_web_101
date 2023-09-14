import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class QuemSouEu extends FlutterDeckSlideWidget {
  const QuemSouEu()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/quem-sou-eu',
            header: FlutterDeckHeaderConfiguration(
              title: 'Aloha!',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return const Column(
          children: [
            Text('Arthur Fücher'),
            Text('Organizador Meetup Clojure BR'),
            Text('Developer Advocate - Nubank'),
          ],
        );
      },
      rightBuilder: (context) {
        return const Text('Imagem linda do Arthur');
      },
    );
  }
}