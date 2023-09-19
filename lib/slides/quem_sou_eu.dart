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
    final theme = FlutterDeckTheme.of(context);
    final textStyle = theme.textTheme.bodyLarge;
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Arthur Fücher',
              style: textStyle,
            ),
            Text(
              'Organizador Meetup Clojure BR',
              style: textStyle,
            ),
            Text(
              'Developer Advocate - Nubank',
              style: textStyle,
            ),
          ],
        );
      },
      rightBuilder: (context) {
        return Image.asset('images/me.jpg');
      },
    );
  }
}
