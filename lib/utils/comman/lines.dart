import 'package:banking_mobile_app/utils/constants/string_colors.dart';
import 'package:flutter/material.dart';

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = PColors.primary
      ..strokeWidth = 2.0;

    canvas.drawLine(const Offset(0, 0), const Offset(20, -15), paint);
    canvas.drawLine(const Offset(0, 10), const Offset(20, -5), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}