import 'package:flutter/material.dart';
import 'dart:math';

class ShiningDotsBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _ShiningDotsPainter(),
    );
  }
}

class _ShiningDotsPainter extends CustomPainter {
  final int numberOfDots = 50;
  final Random random = Random();

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 2.0;

    final List<Offset> dots = [];

    // Generate random positions for dots
    for (int i = 0; i < numberOfDots; i++) {
      final double x = random.nextDouble() * size.width;
      final double y = random.nextDouble() * size.height;
      dots.add(Offset(x, y));
    }

    // Draw dots
    dots.forEach((dot) {
      canvas.drawCircle(dot, 2.0, paint);
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
