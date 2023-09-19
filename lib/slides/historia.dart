import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Historia extends FlutterDeckSlideWidget {
  const Historia()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/historia',
            header: FlutterDeckHeaderConfiguration(title: 'Histórico'),
            steps: 4,
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (_) {
        return FlutterDeckBulletList(
          useSteps: true,
          items: const [
            'Maio/2019: Technical Preview (Google I/O)',
            'Dez/2019: Beta channel (1.12.13)',
            'Março/2021: Stable channel (2.0.0)',
            'Maio/2023: Performance (3.10.0)',
          ],
        );
      },
      rightBuilder: (BuildContext context) =>
          Center(child: Image.asset('images/icon_flutter_wht.png')),
    );
  }
}
