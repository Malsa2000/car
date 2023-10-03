import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class UpdataProfile extends StatelessWidget {
   UpdataProfile({Key? key}) : super(key: key);

  TextEditingController? _uaerName,_city,_phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        CustomText(text: AllString.userName, fontSize: 14.sp, color: MyColors.black),
        CustomTextFiled("hintText", _uaerName!),

        CustomText(text: AllString.city, fontSize: 14.sp, color: MyColors.black),
        CustomTextFiled(AllString.city, _city!),

        CustomText(text: AllString.phoneNumber, fontSize: 14.sp, color: MyColors.black),
        CustomTextFiled(AllString.phoneNumber, _phoneNumber!),
        
        CustomButton(width: 350.w, buttonText: AllString.update, clickButton: clickButton)
      ],),
    );
  }
  void clickButton(){}
}
