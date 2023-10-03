import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "محفظتي", fontSize: 18.sp, color: MyColors.blue2),),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 23.w,vertical: 20.h),
        children: [
        Row(children: [
          CustomText(text: AllString.account1, fontSize: 14.sp, color: MyColors.black),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10.h),
            height: 35.h,width: 120.w,
          decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.all(Radius.circular(10.r)),
          ),
            child:CustomText(text: "50\$", fontSize: 14.sp, color: MyColors.black),

          )

        ],),
        Row(children: [
          CustomText(text: AllString.account2, fontSize: 14.sp, color: MyColors.black),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10.h),
            height: 35.h,width: 120.w,
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            child:CustomText(text: "50\$", fontSize: 14.sp, color: MyColors.black),

          )

        ],),
        Row(children: [
          CustomText(text: AllString.account3, fontSize: 14.sp, color: MyColors.black),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10.h),
            height: 35.h,width: 120.w,
            decoration: BoxDecoration(
              color: MyColors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
            ),
            child:CustomText(text: "50\$", fontSize: 14.sp, color: MyColors.black),

          )

        ],),
        Row(children: [
          CustomText(text: AllString.account4, fontSize: 14.sp, color: MyColors.black),
          CustomButton(width: 120.w, buttonText: "تحويل ", clickButton: clickButton)

        ],),
      ],),
    );
  }
  void clickButton(){

  }
}
