import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class UsesCondations extends StatelessWidget {
  const UsesCondations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: AllString.usesCondations, fontSize: 25.sp, color: MyColors.white)
        ,backgroundColor: MyColors.blue1,),
      backgroundColor: MyColors.blue1,
      body: Container(
        margin: EdgeInsets.only(top: 50.h,left: 10.w,right: 10.w),
        decoration: BoxDecoration(
          color: MyColors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight: Radius.circular(20.r))),
        child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 20.h),
        children: [
          CustomText(text: AllString.usesCondations, fontSize: 18.sp, color: MyColors.blue1),
          SizedBox(height: 20.h,),

          CustomText(text: AllString.policyQustion1, fontSize: 16.sp, color: MyColors.black,
            fontWeight: FontWeight.w600,),
          CustomText(text: AllString.policyAnswer1, fontSize: 13.sp, color: MyColors.black),

          SizedBox(height: 20.h,),
          CustomText(text: AllString.policyQustion2, fontSize: 16.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
          CustomText(text: AllString.policyAnswer2, fontSize: 13.sp, color: MyColors.black),

          SizedBox(height: 20.h,),
          CustomText(text: AllString.policyQustion3, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
          CustomText(text: AllString.policyAnswer2, fontSize: 13.sp, color: MyColors.black),

          //repeat
          SizedBox(height: 20.h,),
          CustomText(text: AllString.policyQustion3, fontSize: 16.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
          CustomText(text: AllString.policyAnswer2, fontSize: 13.sp, color: MyColors.black),

        ],
      ),
      ));
  }
}
