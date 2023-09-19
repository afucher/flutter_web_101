import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Contras extends FlutterDeckSlideWidget {
  const Contras()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              steps: 4,
              route: '/contras',
              header: FlutterDeckHeaderConfiguration(title: 'Attenzione')),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (_) {
        return FlutterDeckBulletList(
          useSteps: true,
          items: const [
            'Search Engine Optimization (SEO)',
            'Blogs, documentações, etc...',
            'Acessibilidade?',
            'Tem...mas tenta me achar (Ctrl+F)',
          ],
        );
      },
      rightBuilder: (BuildContext context) => Image.asset('images/a11y.png'),
    );
  }
}
