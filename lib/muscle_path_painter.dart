import 'package:flutter/material.dart';
import 'package:path_drawing/path_drawing.dart';

class MusclePathPainter extends CustomPainter {
  final String pathData;
  final bool isActive;
  final Color activeColor;
  final Color passiveColor;
  final double strokeWidth;

  static final Map<String, Path> _parsedPaths = {};

  const MusclePathPainter({
    required this.pathData,
    required this.isActive,
    this.activeColor = Colors.red,
    this.passiveColor = Colors.white,
    this.strokeWidth = 0,
  });

  Path _getParsedPath() {
    return _parsedPaths.putIfAbsent(pathData, () => parseSvgPathData(pathData));
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = _getParsedPath()
        .transform(Matrix4.diagonal3Values(0.4, 0.4, 1.0).storage);

    final bounds = path.getBounds();
    final offset = Offset(
      (size.width - bounds.width) / 2 - bounds.left,
      (size.height - bounds.height) / 2 - bounds.top,
    );
    path = path.shift(offset);

    final fillPaint = Paint()
      ..color = isActive ? activeColor : passiveColor
      ..style = PaintingStyle.fill;
    canvas.drawPath(path, fillPaint);

    if (strokeWidth > 0) {
      final strokePaint = Paint()
        ..color = isActive ? activeColor : passiveColor
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth;
      canvas.drawPath(path, strokePaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    final old = oldDelegate as MusclePathPainter;
    return old.isActive != isActive ||
        old.pathData != pathData ||
        old.activeColor != activeColor ||
        old.passiveColor != passiveColor ||
        old.strokeWidth != strokeWidth;
  }
}
