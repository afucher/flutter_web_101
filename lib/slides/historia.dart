import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Historia extends FlutterDeckSlideWidget {
  const Historia()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/historia',
            header: FlutterDeckHeaderConfiguration(title: 'Histórico'),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(builder: (_) {
      return FlutterDeckBulletList(
        items: const [
          'Maio/2019: Technical Preview (Google I/O)',
          'Dez/2019: Beta channel (1.12.13)',
          'Março/2021: Stable channel (2.0.0)',
        ],
      );
    });
  }
}
