import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomText extends StatelessWidget {
   CustomText({Key? key
    ,required this.text ,
    required this.fontSize ,
     this.fontWeight = FontWeight.w400
    ,required this.color,
     this.textAlign =TextAlign.center
  }) : super(key: key);

  String text;
  double fontSize;
  FontWeight fontWeight;
  TextAlign textAlign;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Text(text  ,
      style :GoogleFonts.cairo(
          fontSize :fontSize ,
          fontWeight:fontWeight ,
          height: 1.2,
          color :color),
          textAlign: TextAlign.start);
  }
}
