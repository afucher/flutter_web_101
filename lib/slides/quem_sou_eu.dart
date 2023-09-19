import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class QuemSouEu extends FlutterDeckSlideWidget {
  const QuemSouEu()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/quem-sou-eu',
            header: FlutterDeckHeaderConfiguration(
              title: 'Aloha! Prazer, Arthur Fücher',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    final theme = FlutterDeckTheme.of(context);
    const space = SizedBox(height: 50.0);
    final textStyle = theme.textTheme.bodyLarge.copyWith(fontSize: 50);
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pai da Laura (1a 6m)',
                style: textStyle,
              ),
              space,
              Text(
                'Conhecer pessoas e bater um bom papo (se tiver café ou cerveja melhor)',
                style: textStyle,
              ),
              space,
              Text(
                'Organizador Meetup Clojure BR',
                style: textStyle,
              ),
              space,
              Text(
                'Developer Advocate [at] Nubank',
                style: textStyle,
              ),
              space,
              Text(
                'Clojure () Flutter',
                style: textStyle,
              ),
            ],
          ),
        );
      },
      rightBuilder: (context) {
        return Image.asset('images/me.jpg');
      },
    );
  }
}
