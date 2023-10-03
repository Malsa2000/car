import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget Page3(){
  return Stack(
      children:[
      Row(
      children:[
        Image(
  image: const AssetImage("images/last.png"),
  fit: BoxFit.contain,
  alignment: AlignmentDirectional.centerStart,
  height: 324.h,
  width: 354.w,
  ),
        Spacer(),

      ]),
  Column(
        children: [
          SizedBox(height: 110.h),
          Image(
            image: const AssetImage("images/page3.png"),
            alignment: AlignmentDirectional.centerStart,
            fit: BoxFit.cover,
            height: 300.h,
            width: 345.w,
          ),
          SizedBox(height: 38.h,),
          Padding(padding: EdgeInsets.symmetric(horizontal: 81.w),
            child:CustomText(text: AllString.page3, fontSize: 14, color: MyColors.black)

          ),

        ]),

 ] );
}