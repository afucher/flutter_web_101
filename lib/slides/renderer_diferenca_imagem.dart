import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_web_101/widgets/full_screen_image.dart';

class RendererDiferencaVisual extends FlutterDeckSlideWidget {
  const RendererDiferencaVisual()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
            route: '/renderer-visual',
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
              const FullScreenImage('images/web-html-renderer.png'),
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
              const FullScreenImage('images/web-canvaskit-renderer.png'),
            ],
          ),
        );
      },
    );
  }
}
