import 'package:flutter/widgets.dart';

import '../../tools/layoutSize.dart';


// ignore: must_be_immutable, camel_case_types
class text_helper extends StatelessWidget {
  text_helper(
         {
          super.key,
          required this.data,
          required this.font,
          required this.color,
          required this.size,
          required this.bold
        }
      );

  String data, font;
  Color color;
  double size;
  bool bold;

  @override
  Widget build(BuildContext context) {
    return Text(data, style: customstyle(font, color, size, context, bold));
  }

  static TextStyle customstyle(
      String font, Color color, double size, BuildContext context, bool bold) {
    if (font == "big") {
      return TextStyle(
        fontFamily: "big",
          color: color,
          fontSize: width(context, size),
          fontWeight: bold ? FontWeight.bold : FontWeight.normal);
    } else {
      return TextStyle(
        fontFamily: "small",
          color: color,
          fontSize: width(context, size),
          fontWeight: bold ? FontWeight.bold : FontWeight.normal);
    }
  }
}
