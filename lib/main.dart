import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_web_101/slides/quem_sou_eu.dart';

import 'slides/capa.dart';

void main() {
  runApp(const IntroducaoAoFlutterWeb());
}

class IntroducaoAoFlutterWeb extends StatelessWidget {
  const IntroducaoAoFlutterWeb({super.key});

  @override
  Widget build(BuildContext context) {
    // This is an entry point for the Flutter Deck app.
    return FlutterDeckApp(
      configuration: const FlutterDeckConfiguration(),
      slides: const [ Capa(), QuemSouEu(), ],
    );
  }
}