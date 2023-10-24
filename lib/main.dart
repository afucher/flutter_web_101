import 'package:flutter/material.dart';
import 'package:flutter_deck/flutter_deck.dart';
import 'package:flutter_web_101/slides/apresentacoes.dart';
import 'package:flutter_web_101/slides/assunto_de_hoje.dart';
import 'package:flutter_web_101/slides/contras.dart';
import 'package:flutter_web_101/slides/onde_usar_jogos.dart';
import 'package:flutter_web_101/slides/renderer_diferenca_imagem.dart';
import 'package:flutter_web_101/slides/renderer_rodando.dart';
import 'package:flutter_web_101/slides/usar_ou_nao.dart';
import 'slides/arquitetura.dart';
import 'slides/frase_flutter_web.dart';
import 'slides/google_earth.dart';
import 'slides/habilitando_projeto.dart';
import 'slides/historia.dart';
import 'slides/muito_obrigado.dart';
import 'slides/onde_usar.dart';
import 'slides/quem_sou_eu.dart';
import 'slides/renderer.dart';
import 'slides/renderer_comparacao.dart';
import 'slides/rodando_projeto.dart';

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
        AssuntoDeHoje(),
        Historia(),
        FraseFlutterWeb(),
        Arquitetura(),
        HabilitandoProjeto(),
        RodandoProjeto(),
        Renderer(),
        RendererComparacao(),
        RendererDiferencaVisual(),
        RendererRodando(),
        UsarOuNao(),
        Contras(),
        OndeUsar(),
        OndeUsarJogos(),
        GoogleEarth(),
        Apresentacoes(),
        MuitoObrigado(),
      ],
    );
  }
}
