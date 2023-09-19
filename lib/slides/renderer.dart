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
                'Combinação de: HTML, CSS, Canvas and SVG',
                style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Not pixel perfect',
                style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Tamanho inferior de download',
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
                'CanvasKit - Skia wasm: WebGL',
                style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Consistente com Flutter desktop e mobile',
                style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
              ),
              Text(
                'Performance melhor em contextos com maior densidade de widgets',
                style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        );
      },
    );
  }
}
