part of innerglow;

// ignore: must_be_immutable
class InnerGlow extends StatelessWidget {
  InnerGlow({
    super.key,
    required this.width,
    required this.height,
    this.glowRadius = 0,
    this.thickness = 10,
    this.glowBlur = 5,
    this.child,
    this.blurBackground = 0,
    this.strokeLinearGradient = const LinearGradient(colors: [Colors.white,Colors.white]),
    this.baseDecoration = const BoxDecoration(color: Colors.transparent),
    this.margin = const EdgeInsets.all(0),
  });

  final double width,height,glowBlur,glowRadius,thickness,blurBackground;
  Widget? child;
  LinearGradient strokeLinearGradient;
  BoxDecoration baseDecoration;
  EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      decoration: baseDecoration,
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: blurBackground,sigmaX: blurBackground),
          child: CustomPaint(
              painter: CustomPainterInnerGlow(thickness,glowBlur,glowRadius,strokeLinearGradient),
              child: child
          ),
        ),
      ),
    );
  }
}
