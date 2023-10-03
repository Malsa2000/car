import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/create_new_account/create_user_account.dart';
import 'package:car/ui/drawer_screens/change_password.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class CodeToForgetPassword extends StatelessWidget {
   CodeToForgetPassword({Key? key}) : super(key: key);

  TextEditingController _number1Controller= TextEditingController();
  TextEditingController _number2Controller= TextEditingController();
  TextEditingController _number3Controller= TextEditingController();
  TextEditingController _number4Controller= TextEditingController();
  TextEditingController _number5Controller= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.blue1,
      body: Column(
        children: [
          SizedBox(height: 50.h,),
          Image(height: 100.h,width: 100.w,
              image: const AssetImage("images/login.png")),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ادخل"  ,
                  style :GoogleFonts.cairo(
                      fontSize :30.sp ,
                      height: 1.0,
                      fontWeight:FontWeight.w600 ,
                      color : MyColors.white),
                  textAlign: TextAlign.start),
              SizedBox(width: 10.w,),
              Text("الرمز"  ,
                  style :GoogleFonts.cairo(
                      fontSize :30.sp ,
                      height: 1.0,
                      fontWeight:FontWeight.w300 ,
                      color :Colors.yellow),
                  textAlign: TextAlign.start),
            ],),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 130.h,left: 16.w,right: 16.w),
              padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 70.h),
              decoration: BoxDecoration(
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.r),
                    topRight: Radius.circular(30.r),)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(text: "ادخل الرمز الذي تلقيته؟",
                      textAlign: TextAlign.center,
                      fontSize: 18, color: MyColors.black),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      EditText(_number1Controller),
                      EditText(_number2Controller),
                      EditText(_number3Controller),
                      EditText(_number4Controller),
                      EditText(_number5Controller),
                    ],),
                  SizedBox(height: 20.h,),
                  CustomButton(width: 260, buttonText: "تأكيد", clickButton:(){
                    clickButton(context);
                  }),

                ],),),
          )
        ],
      ),
    );
  }
  void clickButton(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangePassword()));
  }

   Widget EditText(TextEditingController controller){
     return Container(
       decoration:const BoxDecoration(
         boxShadow: [BoxShadow(color: Color(0xFFf0eee4), blurRadius: 4)],
       ),
       child: TextField(
         controller: controller,
         keyboardType: TextInputType.number,
         decoration: InputDecoration(
           filled: true,
           fillColor: MyColors.white,
           constraints: BoxConstraints(
               maxHeight: 64.h ,maxWidth: 46.w ,minWidth: 46.w),
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

}
