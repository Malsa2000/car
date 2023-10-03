import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({Key? key}) : super(key: key);

  @override
  State<EnterCode> createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {

  late TextEditingController _number1Controller;
  late TextEditingController _number2Controller;
  late TextEditingController _number3Controller;
  late TextEditingController _number4Controller;
  late TextEditingController _number5Controller;
  late TextEditingController _pay;

  @override
  void initState() {
    super.initState();
    _number1Controller = TextEditingController();
    _number2Controller = TextEditingController();
    _number3Controller = TextEditingController();
    _number4Controller = TextEditingController();
    _number5Controller = TextEditingController();
    _pay =TextEditingController();
  }
  @override
  void dispose() {
    _pay.dispose();
    _number1Controller.dispose();
    _number2Controller.dispose();
    _number3Controller.dispose();
    _number4Controller.dispose();
    _number5Controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:CustomText(text: "ادخل رمز الكود", fontSize: 18.sp, color: MyColors.blue2,
      fontWeight: FontWeight.w600),
      ),
     body: Container(
       margin: EdgeInsets.only(top: 30.h),
       decoration: BoxDecoration(
         color: MyColors.white,
           boxShadow:const [BoxShadow( color: Color(0xFFf0eee4),blurRadius: 6)],
           borderRadius: BorderRadius.only(
             topRight: Radius.circular(40.r),
             topLeft: Radius.circular(40.r))
       ),
       child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 23.w,vertical: 30.h),
        children: [
        CustomText(text: AllString.enterCodeText, fontSize: 16.sp, color: MyColors.black),
        SizedBox(height: 25.h,),
        CustomText(text: AllString.enterCode, fontSize: 16.sp, color: MyColors.black,
        fontWeight: FontWeight.w600,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          EditText(_number1Controller),
          EditText(_number2Controller),
          EditText(_number3Controller),
          EditText(_number4Controller),
          EditText(_number5Controller),
        ],),
        SizedBox(height: 30.h,),

        CustomButton(width: 300.w, buttonText: AllString.check, clickButton: (){}),

          Divider(height: 80.h,color: MyColors.gray2,endIndent: 10,indent: 10,thickness: 0.5,),
          CustomText(text: AllString.payUsingTecit, fontSize: 16.sp, color: MyColors.black),
          SizedBox(height: 10.h,),
          CustomTextFiled("او ادخل رقم محفظتك", _pay),
          SizedBox(height: 20.h,),
          CustomButton(width: 300.w, buttonText: "تم", clickButton: (){
            Navigator.pushReplacementNamed(context, "home");
          })

        ]),
     ));
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
