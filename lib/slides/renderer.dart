import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class Renderer extends FlutterDeckSlideWidget {
  const Renderer()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/renderer',
            steps: 3,
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
                style: FlutterDeckTheme.of(context).textTheme.title.copyWith(
                      decoration: TextDecoration.underline,
                    ),
              ),
              Expanded(
                child: FlutterDeckBulletList(
                  useSteps: true,
                  items: const [
                    'Combinação de: HTML, CSS, Canvas and SVG',
                    'Not pixel perfect',
                    'Tamanho inferior de download'
                  ],
                ),
              )
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
                style: FlutterDeckTheme.of(context).textTheme.title.copyWith(
                      decoration: TextDecoration.underline,
                      decorationColor:
                          FlutterDeckSplitSlideTheme.of(context).rightColor,
                    ),
              ),
              Expanded(
                child: FlutterDeckBulletListTheme(
                  data: FlutterDeckBulletListThemeData(
                    color: FlutterDeckSplitSlideTheme.of(context).rightColor,
                    textStyle: FlutterDeckBulletListTheme.of(context).textStyle,
                  ),
                  child: FlutterDeckBulletList(
                    useSteps: true,
                    items: const [
                      'CanvasKit - Skia wasm: WebGL',
                      'Consistente com Flutter desktop e mobile',
                      'Performance melhor em contextos com maior densidade de widgets'
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
