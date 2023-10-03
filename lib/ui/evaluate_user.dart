import 'package:car/const/my_color.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class EvaluateUser extends StatelessWidget {
   EvaluateUser({Key? key}) : super(key: key);

  TextEditingController _noteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blue1,
      appBar: AppBar(title: CustomText(text: "تقييم العميل", fontSize: 22.sp, color: MyColors.white),),
      body: Container(
        margin: EdgeInsets.only(top: 30.h,left: 16.w,right: 16.w),
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.r),
            topLeft: Radius.circular(30.r),)
        ),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
              Padding(padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 30.h),
            child:CustomText(text: "يرجى تقييم العميل الذي تعاملت معه", fontSize: 14.sp, color: MyColors.black),
    ),
              Container(
                margin: EdgeInsets.only(top: 7.h),
              padding: EdgeInsets.symmetric(vertical: 5.h),
              height: 20,
              width: 100.w,
              child: RatingBar.builder(
                initialRating: 2,
                minRating: 1,
                itemSize: 20.0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding:
                EdgeInsets.symmetric(horizontal: 0.1.h),
                itemBuilder: (context, _) =>const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (double rating) {
                  //  widget._rate_vlaue = rating;
                },
              ),
            ),

             Padding(padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 30.h),
                child:CustomText(text: "قيم الشخص الذي تعاملت معه ؟ ", fontSize: 12.sp, color: MyColors.black),
           ),
             Container(
              margin: EdgeInsets.only(top: 7.h),
              padding: EdgeInsets.symmetric(vertical: 5.h),
              height: 20,
              width: 100.w,
              child: RatingBar.builder(
                initialRating: 2,
                minRating: 1,
                itemSize: 20.0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding:
                EdgeInsets.symmetric(horizontal: 0.1.h),
                itemBuilder: (context, _) =>const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (double rating) {
                  //  widget._rate_vlaue = rating;
                },
              ),
            ),

            Padding(padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 30.h,bottom: 10.h),
              child:CustomText(text: "هل ترغب في تقديم شكوى  ؟ ", fontSize: 12.sp, color: MyColors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(width: 150.w, buttonText: "نعم", clickButton: (){}),
                CustomButton(width: 150.w, buttonText: "لا", clickButton: (){}),
              ],
            ),

            Padding(padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 30.h),
              child:CustomText(text: "اضافة ملاحظاتك ", fontSize: 12.sp, color: MyColors.black),
            ),
            CustomTextFiled("اكتب ملاحظاتك", _noteController),

            SizedBox(height: 30.h,),

            CustomButton(width: 350.w, buttonText: "قيم", clickButton:(){} )


          ],),
      ),
    );
  }
}
