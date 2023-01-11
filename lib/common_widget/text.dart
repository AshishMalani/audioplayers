import 'package:flutter/cupertino.dart';

class CommonText {
  static text({required String text, color, fontWeight, fontSize}) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily: "Roboto"),
    );
  }
}
