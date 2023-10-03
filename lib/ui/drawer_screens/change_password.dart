import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/create_new_account/create_user_account.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ChangePassword extends StatelessWidget {
  ChangePassword({Key? key}) : super(key: key);

  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blue1,
      body: Column(
        children: [
          SizedBox(height: 50.h,),
          Image(height: 100.h, width: 100.w,
              image: const AssetImage("images/login.png")),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("تغيير",
                  style: GoogleFonts.cairo(
                      fontSize: 30.sp,
                      height: 1.0,
                      fontWeight: FontWeight.w600,
                      color: MyColors.white),
                  textAlign: TextAlign.start),
              SizedBox(width: 10.w,),
              Text("كلمة المرور",
                  style: GoogleFonts.cairo(
                      fontSize: 30.sp,
                      height: 1.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.yellow),
                  textAlign: TextAlign.start),
            ],),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 180.h, left: 16.w, right: 16.w),
              padding: EdgeInsets.only(left: 16.w, right: 16.w),
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(text: "تغيير كلمة المرور",
                      textAlign: TextAlign.center,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: MyColors.blue1),
                  SizedBox(height: 30.h,),
                  CustomTextFiled("ادخل كلمة المرور القديمة", oldPassword),
                  SizedBox(height: 15.h,),
                  CustomTextFiled("ادخل كلمة المرور الجديدة", newPassword),
                  SizedBox(height: 15.h,),
                  CustomTextFiled("تأكيد كلمة المرور الجديدة", newPassword),
                  SizedBox(height: 30.h,),
                  CustomButton(width: 260,
                      buttonText: "قم بتغيير كلمة المرور",
                      clickButton: (){
                        clickButton(context);
                      })


                ],),),
          )
        ],
      ),
    );
  }
  void clickButton(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateUserAccount()));
  }
}

