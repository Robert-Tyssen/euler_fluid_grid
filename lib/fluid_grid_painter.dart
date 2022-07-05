import 'dart:math';

import 'package:flutter/material.dart';

class FluidGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.blue;
    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 2.0;

    canvas.drawRect(Rect.fromLTRB(0, 0, size.width, size.height), paint);

    // TODO - implement grid rendering


    int gridSize = 50;

    for (int col = 0; col < gridSize; col++) {
      for (int row = 0; row < gridSize; row++) {
        var left = row * size.width / gridSize;
        var right = left + size.width / gridSize;
        var top = col * size.height / gridSize;
        var bot = top + size.height / gridSize;

        paint.style = PaintingStyle.fill;
        paint.color = Color.fromRGBO(
          Random().nextInt(255),
          Random().nextInt(255),
          Random().nextInt(255),
          1,
        );

        canvas.drawRect(Rect.fromLTRB(left, top, right, bot), paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
