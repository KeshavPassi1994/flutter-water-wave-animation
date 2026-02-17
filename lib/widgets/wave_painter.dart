import 'dart:math';
import 'package:flutter/material.dart';

/// Custom Painter responsible for drawing animated waves.
/// Uses sine function to create realistic water motion.
class WavePainter extends CustomPainter {

  final double animationValue;

  WavePainter(this.animationValue);

  @override
  void paint(Canvas canvas, Size size) {

    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    final path = Path();

    /// Start drawing from bottom-left corner
    path.moveTo(0, size.height);

    /// Generate wave using sine mathematical function
    for (double i = 0; i <= size.width; i++) {

      double waveHeight =
          sin((i / size.width * 2 * pi) + (animationValue * 2 * pi)) * 18;

      double y = waveHeight + size.height / 2;

      path.lineTo(i, y);
    }

    /// Close wave shape
    path.lineTo(size.width, size.height);
    path.close();

    /// Draw wave on canvas
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
