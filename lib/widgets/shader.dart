import 'dart:ui' as ui;

import 'package:flame/game.dart';
import 'package:flutter/material.dart';

class Shader extends StatefulWidget {
  const Shader({super.key});

  @override
  State<Shader> createState() => _ContentRightState();
}

class _ContentRightState extends State<Shader> {
  final _focusNode = FocusNode();
  final game = _Water();

  @override
  void dispose() {
    game.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  void _onChanged(double value) => setState(() => game.seaHeight = value);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _focusNode.requestFocus,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        child: Material(
          child: Column(
            children: [
              Expanded(child: GameWidget(autofocus: false, game: game)),
              Slider(
                focusNode: _focusNode,
                value: game.seaHeight,
                onChanged: _onChanged,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Water extends Game {
  late final devicePixelRatio = MediaQuery.of(buildContext!).devicePixelRatio;

  late final ui.FragmentProgram _program;
  late final ui.FragmentShader shader;

  var _time = 0.0;

  double seaHeight = 0.3;

  void dispose() {
    shader.dispose();
  }

  @override
  Future<void>? onLoad() async {
    _program = await ui.FragmentProgram.fromAsset('shaders/water.glsl');
    shader = _program.fragmentShader();
  }

  @override
  void render(ui.Canvas canvas) {
    shader
      ..setFloat(0, size.x)
      ..setFloat(1, size.y)
      ..setFloat(2, _time)
      ..setFloat(3, seaHeight.clamp(0, 1));

    canvas
      ..translate(size.x, size.y)
      ..rotate(180 * degrees2Radians)
      ..drawRect(
        Offset.zero & size.toSize(),
        Paint()..shader = shader,
      );
  }

  @override
  void update(double dt) => _time += dt;
}
