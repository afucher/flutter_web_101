import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  final String asset;

  const FullScreenImage(this.asset, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
              opaque: false,
              barrierColor: Colors.black.withOpacity(0.7),
              pageBuilder: (BuildContext context, _, __) {
                return GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Center(child: Image.asset(asset)),
                );
              }),
        );
      },
      child: Image.asset(asset),
    );
  }
}
