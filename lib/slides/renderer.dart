import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Renderer extends FlutterDeckSlideWidget {
  const Renderer()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/renderer',
            header: FlutterDeckHeaderConfiguration(
              title: 'Web renderers',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (context) {
        return Center(
          child: Column(
            children: [
              Text(
                'HTML renderer',
                style: FlutterDeckTheme.of(context).textTheme.subtitle,
              ),
              Text(
                'Combination of: HTML, CSS, Canvas and SVG',
                style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Not pixel perfect',
                style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        );
      },
      rightBuilder: (context) {
        return Center(
          child: Column(
            children: [
              Text(
                'CanvasKit renderer',
                style: FlutterDeckTheme.of(context).textTheme.subtitle,
              ),
              Text(
                'Combination of: HTML, CSS, Canvas and SVG',
                style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Not pixel perfect',
                style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        );
      },
    );
  }
}
