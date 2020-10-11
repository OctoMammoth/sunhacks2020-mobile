import 'package:flutter/material.dart';

double PI = 3.14159265359;

class ParadoxBox extends StatelessWidget {
  final double top;
  final double bottom;
  final double left;
  final double right;
  final double scale;
  final double rotate;

  Widget build(BuildContext context) {
    return Positioned.fill(
      top: this.top,
      bottom: this.bottom,
      left: this.left,
      right: this.right,
      child: Transform.rotate(
        angle: PI / 180 * this.rotate,
        child: Transform.scale(
          scale: this.scale,
          child: Image.asset('images/box.png'),
        ),
      ),
    );
  }

  ParadoxBox({
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.scale : 1,
    this.rotate : 0,
  });
}
