import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/create_new_account/create_user_account.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late TextEditingController phoneNumber;
  late TextEditingController password;

  @override
  void initState() {
    phoneNumber = TextEditingController();
    password = TextEditingController();

    super.initState();
  }
  @override
  void dispose() {
    phoneNumber.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "تسجيل الدخول", fontSize: 18.sp, color: MyColors.blue2),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height :60.h),
            // Container(
            //   height: 70.h,
            //   width: 150.w,
            //     margin: EdgeInsets.symmetric(horizontal: 30.w,vertical: 10.h),
            //     padding: EdgeInsets.all(5.h),
            //     alignment: Alignment.centerLeft,
            //   decoration: BoxDecoration(
            //     color: MyColors.white,
            //     boxShadow: [BoxShadow(color: MyColors.gray2,blurRadius: 5)],
            //     borderRadius: BorderRadius.all(Radius.circular(30.r))
            //   ),
            //   child: Row(
            //     children: [
            //       Container(
            //         width: 80.w,
            //         alignment: Alignment.center,
            //         decoration: BoxDecoration(
            //             color: MyColors.blue1,
            //             borderRadius: BorderRadius.all(Radius.circular(30.r))
            //         ),
            //         child:CustomText(text: "SignIN", fontSize: 16.sp, color: MyColors.blue2,
            //           fontWeight: FontWeight.w700,)
            //       ),
            //       SizedBox(width: 10.w,),
            //       CustomText(text: "SignUp", fontSize: 16.sp, color: MyColors.blue2,
            //       fontWeight: FontWeight.w700,)
            //     ],
            //   )
            // ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 16.w,right: 16.w),
              decoration: BoxDecoration(
                color: MyColors.white,
                  boxShadow: [BoxShadow(color: Color(0xFFf0eee4), blurRadius: 6)],
                  borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r),)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(height: 250.h,width: 200.w,
                    image: const AssetImage("images/car1.PNG")),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("تسجيل"  ,
                        style :GoogleFonts.cairo(
                            fontSize :30.sp ,
                            height: 1.0,
                            fontWeight:FontWeight.w600 ,
                            color : MyColors.blue1),
                        textAlign: TextAlign.start),
                    SizedBox(width: 10.w,),
                    Text("دخول"  ,
                        style :GoogleFonts.cairo(
                            fontSize :30.sp ,
                            height: 1.0,
                            fontWeight:FontWeight.w300 ,
                            color :MyColors.gray),
                        textAlign: TextAlign.start),
                  ],),

                SizedBox(height: 30.h,),
                CustomTextFiled(AllString.phoneNumber, phoneNumber),
                SizedBox(height: 15.h,),
                CustomTextFiled(AllString.passwprd, phoneNumber),
                TextButton(
                    onPressed:()=>forgitPassword(),
                    child: CustomText(text: AllString.forgitPassword,
                  textAlign: TextAlign.start,
                  fontSize: 14, color: MyColors.black)
              ),
                SizedBox(height: 30.h,),
                CustomButton(width: 260, buttonText: AllString.login, clickButton:login),
                SizedBox(height: 15.h,),
                CustomButton(width: 260, buttonText: AllString.creatUserAccount, clickButton:clickButton)



            ],),),
          )
        ],
      ),
    );
  }
 void forgitPassword(){
    Navigator.pushNamed(context, "forgit_pass");
 }

  void login(){
    Navigator.pushNamed(context, "home");
  }

  void clickButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateUserAccount()));
  }
}
