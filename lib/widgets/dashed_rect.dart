import 'package:flutter_fintech_app/utilities/import.dart';


class DashedCircle extends StatelessWidget {
  final double dashes;
  final Color color;
  final double gapSize;
  final double strokeWidth;
  final Widget child;

  const DashedCircle({
    Key? key,
    required this.child,
    required this.dashes,
    required this.color,
    required this.gapSize,
    required this.strokeWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedCirclePainter(
        dashes: dashes,
        color: color,
        gapSize: gapSize,
        strokeWidth: strokeWidth,
      ),
      child: Padding(
        padding: kSinglePad,
        child: child,
      ),
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  final double dashes;
  final Color color;
  final double gapSize;
  final double strokeWidth;

  DashedCirclePainter({
    required this.dashes,
    required this.color,
    required this.gapSize,
    required this.strokeWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double gap = pi / 180 * gapSize;
    final double singleAngle = (pi * 2) / dashes;

    for (int i = 0; i < dashes; i++) {
      final Paint paint = Paint()
        ..color = color
        ..strokeWidth = strokeWidth
        ..style = PaintingStyle.stroke;

      canvas.drawArc(Offset.zero & size, gap + singleAngle * i,
          singleAngle - gap * 2, false, paint);
    }
  }

  @override
  bool shouldRepaint(DashedCirclePainter oldDelegate) {
    return dashes != oldDelegate.dashes || color != oldDelegate.color;
  }
}
