import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';

class RendererRodando extends FlutterDeckSlideWidget {
  const RendererRodando()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            steps: 2,
            route: '/renderer-rodando',
            header: FlutterDeckHeaderConfiguration(
              title: 'Web renderers',
            ),
          ),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.blank(
      builder: (context) => FlutterDeckCodeHighlightTheme(
        data: FlutterDeckCodeHighlightThemeData(
          textStyle:
              FlutterDeckCodeHighlightTheme.of(context).textStyle?.copyWith(
                    fontSize: 50,
                  ),
        ),
        child: FlutterDeckSlideStepsBuilder(
          builder: (context, stepNumber) => Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Center(
                child: FlutterDeckCodeHighlight(
                  code: '''
        > flutter run -d chrome --web-renderer html
                    
        > flutter build --web-renderer canvaskit
        ''',
                  language: 'shell',
                ),
              ),
              stepNumber == 2
                  ? Text(
                      'Opção padrão é auto',
                      style: FlutterDeckTheme.of(context).textTheme.bodyLarge,
                    )
                  : const SizedBox.shrink()
            ],
          ),
        ),
      ),
    );
  }
}
