import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/create_new_account/create_user_account.dart';
import 'package:car/ui/login/code_to_forgit_password.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  late TextEditingController phoneNumber;

  @override
  void initState() {
    phoneNumber = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    phoneNumber.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "انشاء حساب", fontSize: 18.sp, color: MyColors.blue2),),
      body: Column(
        children: [
          SizedBox(height: 50.h,),
         Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 30.h),
              padding: EdgeInsets.only(left: 16.w,right: 16.w, top: 70.h),
              decoration: BoxDecoration(
                  color: MyColors.white,
                  boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), blurRadius: 6)],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    topRight: Radius.circular(50.r),)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image(height: 250.h,width: 200.w,
                      image: const AssetImage("images/car1.PNG")),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("استرجاع"  ,
                          style :GoogleFonts.cairo(
                              fontSize :30.sp ,
                              height: 1.0,
                              fontWeight:FontWeight.w600 ,
                              color : MyColors.gray),
                          textAlign: TextAlign.start),
                      SizedBox(width: 10.w,),
                      Text("كلمة المرور"  ,
                          style :GoogleFonts.cairo(
                              fontSize :30.sp ,
                              height: 1.0,
                              fontWeight:FontWeight.w300 ,
                              color :Colors.yellow),
                          textAlign: TextAlign.start),
                    ],),
                  SizedBox(height: 20.h,),
                  CustomText(text: "الرجاء ادخال رقم الجوال الخاص بك وسنرسل لك كود",
                      textAlign: TextAlign.center,
                      fontSize: 13, color: MyColors.black),
                  SizedBox(height: 15.h,),
                  CustomTextFiled(AllString.phoneNumber, phoneNumber),
                  SizedBox(height: 15.h,),
                  CustomButton(width: 260, buttonText: "التالي", clickButton:clickButton),



                ],),),
          )
        ],
      ),
    );
  }

  void clickButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CodeToForgetPassword()));
  }
}
