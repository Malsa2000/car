import 'package:car/const/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomButton extends StatelessWidget {
   CustomButton({Key? key ,required this.width ,required this.buttonText ,required this.clickButton}) : super(key: key);

  double width = 200;
  String buttonText = "";
  Function clickButton;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shadowColor: const Color(0xFFf0eee4),
          primary: MyColors.blue1,
          minimumSize: Size(width.w , 48.h),
          maximumSize: Size(width.w , 48.h),
          elevation: 2,
          alignment: AlignmentDirectional.center,
          padding:  EdgeInsets.all(10.h),
        ),
        onPressed: ()=>clickButton(),
        child: Text(
          buttonText,style: GoogleFonts.tajawal(color: Colors.white,fontSize:16.sp ),

        ));
  }
}
