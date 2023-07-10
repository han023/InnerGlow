part of innerglow;

class CustomPainterInnerGlow extends CustomPainter {

  CustomPainterInnerGlow(this.stroke,this.blur,this.radius,this.linearGradient);
  double stroke,blur,radius;
  LinearGradient linearGradient;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = stroke
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, blur);


    final borderRadius = Radius.circular(radius);
    final rect = RRect.fromRectAndCorners(
      Rect.fromLTWH(0, 0, size.width, size.height),
      topLeft: borderRadius,
      topRight: borderRadius,
      bottomLeft: borderRadius,
      bottomRight: borderRadius,
    );

    final path = Path()..addRRect(rect);

    final gradient = linearGradient;
    paint.shader = gradient.createShader(path.getBounds());

    canvas.clipPath(path);
    canvas.saveLayer(rect.outerRect , paint);
    canvas.drawRRect(rect, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}


