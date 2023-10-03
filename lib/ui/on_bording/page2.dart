import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
Widget Page2(){
  return Stack(
      children:[
        Container(

          padding: EdgeInsets.symmetric(vertical: 30.h),
          width: double.infinity,
          height: 291.h,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fitWidth,
              image: const AssetImage("images/center.png"),
            )
          ),
        ),


    Column(
      children: [
        SizedBox(height: 100.h),
        Image(
          image: const AssetImage("images/page2.png"),
          alignment: AlignmentDirectional.center,
          fit: BoxFit.cover,
          height: 300.h,
          width: 345.w,
        ),
        SizedBox(height: 38.h,),
        Padding(padding: EdgeInsets.symmetric(horizontal: 65.w),
          child:CustomText(text: AllString.page2, fontSize: 14, color: MyColors.black)

        )
      ],),
]

  );
}