import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_web_101/slides/arquitetura.dart';
import 'package:flutter_web_101/slides/frase_flutter_web.dart';
import 'package:flutter_web_101/slides/habilitando_projeto.dart';
import 'package:flutter_web_101/slides/historia.dart';
import 'package:flutter_web_101/slides/onde_usar.dart';
import 'package:flutter_web_101/slides/quem_sou_eu.dart';
import 'package:flutter_web_101/slides/renderer.dart';
import 'package:flutter_web_101/slides/renderer_comparacao.dart';
import 'package:flutter_web_101/slides/rodando_projeto.dart';

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
      slides: const [
        Capa(),
        QuemSouEu(),
        Historia(),
        FraseFlutterWeb(),
        Arquitetura(),
        HabilitandoProjeto(),
        RodandoProjeto(),
        Renderer(),
        RendererComparacao(),
        OndeUsar(),
      ],
    );
  }
}
