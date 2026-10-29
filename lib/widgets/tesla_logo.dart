import 'dart:math' as math;
import 'package:flutter/material.dart';

/// Tesla University logo drawn fully in code (no image asset required):
/// gradient orb + electron orbits + lightning bolt.
class TeslaLogo extends StatelessWidget {
  final double size;
  const TeslaLogo({super.key, this.size = 64});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(painter: _TeslaLogoPainter()),
    );
  }
}

class _TeslaLogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final c = size.center(Offset.zero);
    final r = size.width / 2;
    final rect = Rect.fromCircle(center: c, radius: r);

    // Glow
    canvas.drawCircle(
      c,
      r,
      Paint()
        ..color = const Color(0xFF00E5FF).withOpacity(0.45)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, r * 0.25),
    );

    // Orb
    canvas.drawCircle(
      c,
      r * 0.95,
      Paint()
        ..shader = const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF00E5FF), Color(0xFF2962FF), Color(0xFF6200EA)],
        ).createShader(rect),
    );

    // Outer ring
    canvas.drawCircle(
      c,
      r * 0.86,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = r * 0.035
        ..color = Colors.white.withOpacity(0.35),
    );

    // Electron orbits
    final orbit = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = r * 0.03
      ..color = Colors.white.withOpacity(0.45);
    for (final a in [0.0, math.pi / 3, 2 * math.pi / 3]) {
      canvas.save();
      canvas.translate(c.dx, c.dy);
      canvas.rotate(a);
      canvas.drawOval(
        Rect.fromCenter(
            center: Offset.zero, width: r * 1.65, height: r * 0.62),
        orbit,
      );
      canvas.restore();
    }

    // Lightning bolt
    final w = size.width, h = size.height;
    final bolt = Path()
      ..moveTo(w * 0.57, h * 0.14)
      ..lineTo(w * 0.28, h * 0.55)
      ..lineTo(w * 0.46, h * 0.55)
      ..lineTo(w * 0.40, h * 0.86)
      ..lineTo(w * 0.72, h * 0.43)
      ..lineTo(w * 0.53, h * 0.43)
      ..close();
    canvas.drawPath(
      bolt,
      Paint()
        ..color = Colors.white.withOpacity(0.7)
        ..maskFilter = MaskFilter.blur(BlurStyle.normal, r * 0.08),
    );
    canvas.drawPath(bolt, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}