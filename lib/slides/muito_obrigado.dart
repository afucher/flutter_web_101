import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MuitoObrigado extends FlutterDeckSlideWidget {
  const MuitoObrigado()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/obrigado',
              header: FlutterDeckHeaderConfiguration(title: 'Dúvidas?')),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      leftBuilder: (_) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Muito obrigado!',
              style: FlutterDeckTheme.of(context).textTheme.title,
            ),
            const FlutterDeckSpeakerInfoWidget(
              speakerInfo: FlutterDeckSpeakerInfo(
                  description: 'Developer Advocate / Clojure / Flutter',
                  imagePath: 'images/me.jpg',
                  name: 'Arthur Fücher',
                  socialHandle: '@afucher (twitter: thur)'),
            )
          ],
        );
      },
      rightBuilder: (BuildContext context) {
        return Center(
          child: Column(
            children: [
              QrImageView(
                size: 500,
                data: 'https://github.com/afucher/flutter_web_101',
              ),
              Text(
                'Código da palestra',
                style: FlutterDeckTheme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        );
      },
    );
  }
}
