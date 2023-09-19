import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:rive/rive.dart';

import '../widgets/login.dart';

class OndeUsar extends FlutterDeckSlideWidget {
  const OndeUsar()
      : super(
          configuration: const FlutterDeckSlideConfiguration(
              route: '/onde-usar',
              header: FlutterDeckHeaderConfiguration(title: 'Onde usar?')),
        );

  @override
  FlutterDeckSlide build(BuildContext context) {
    return FlutterDeckSlide.split(
      theme: FlutterDeckTheme.of(context).copyWith(
          splitSlideTheme: const FlutterDeckSplitSlideThemeData(
              rightBackgroundColor: Color(0xffd6e2ea))),
      leftBuilder: (_) => FlutterDeckBulletList(
        items: const [
          'Progressive Web Apps (PWA)',
          'Single Page Apps (SPA)',
          'Aplicativos feitos em Flutter',
        ],
      ),
      rightBuilder: (BuildContext context) => const Login(),
    );
  }
}
