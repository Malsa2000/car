import 'package:car/const/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CustomTextFiled(String hintText ,TextEditingController controller){


  return Container(
    decoration: BoxDecoration(
      boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
    ),
    child: TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        filled: true,
        fillColor: MyColors.white,
        hintText: hintText,

        hintStyle: TextStyle(
            color:MyColors.gray , fontSize: 14.sp ),
        constraints: BoxConstraints(
            maxHeight: 48.h ,maxWidth: 260.w ,minWidth: 260.w),
        errorBorder:const OutlineInputBorder(
          borderSide:  BorderSide(color: Colors.red, width: 1.0),
        ),
        enabledBorder:const OutlineInputBorder(

          borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
          borderSide: BorderSide(width: 0.5, color: Colors.transparent ,),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color:MyColors.blue2, width: 1.0),
        ),
      ),
      enabled: true,

    ),
  );
}