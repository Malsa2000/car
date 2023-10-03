import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget Page1(){
  return Stack(
    children:[
      Row(
        children:[
          Spacer(),
          Image(
          image: const AssetImage("images/first.png"),
          fit: BoxFit.contain,
          alignment: AlignmentDirectional.centerEnd,
          height: 300.h,
          width: 345.w,
        ),
      ]),
      Column(
      children: [
        SizedBox(height: 130.h),
        Image(
          image: const AssetImage("images/page1.png"),
          alignment: AlignmentDirectional.center,
          fit: BoxFit.cover,
          height: 291.h,
          width: 300.w,
        ),

        SizedBox(height: 38.h,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 100.w),
          child:
         CustomText(text: AllString.page1, fontSize: 14, color: MyColors.blue2)
        )

      ],),

  ]);
}