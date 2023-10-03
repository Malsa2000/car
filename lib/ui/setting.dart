import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
        children: [

      ListTile(
        hoverColor: MyColors.white,
        style: ListTileStyle.list,
        title: CustomText(text:AllString.notifcations, fontSize: 16.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.3)),
          leading:const Icon(Icons.notifications_none_sharp,color: MyColors.black,size: 20,),
   ),


      ListTile(
        onTap:()=>clickButton(context ,"profile") ,
        title: CustomText(text: "حساب المستخدم", fontSize: 16.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.3)),
          leading:const Icon(Icons.account_circle_outlined,color: MyColors.black,size: 20,),
         ),
      ListTile(
        onTap:()=>clickButton(context ,"change_password") ,
        title: CustomText(text: "تغير كلمة المرور", fontSize: 16.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.3)),
          leading:const Icon(Icons.security,color: MyColors.black,size: 20,),
      ),

      ListTile(
         onTap:()=>clickButton(context ,"month_pay") ,
          title: CustomText(text:AllString.payMonth, fontSize: 16.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.3)),
          leading:const Icon(Icons.payment,color: MyColors.black,size: 20,),
      ),
      ListTile(
        onTap:()=>clickButton(context ,"account") ,
        title: CustomText(text:AllString.payer, fontSize: 16.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.3)),
          leading:const Icon(Icons.account_balance,color: MyColors.black,size: 20,),
      ),

      ListTile(
        onTap:()=>clickButton(context ,"connect_us") ,
        title: CustomText(text:AllString.callUs, fontSize: 16.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.3)),
          leading:const Icon(Icons.call,color: MyColors.black,size: 20,),
      ),

      ListTile(
        onTap:()=>clickButton(context ,"policy") ,
        title: CustomText(text:AllString.policyTitle,
            fontSize: 16.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.3)),
  leading:const Icon(Icons.policy,color: MyColors.black,size: 20,),
   ),
      ListTile(
          title: CustomText(text:AllString.aboutApp, fontSize: 16.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.3)),
          leading:const Icon(Icons.abc_outlined,color: MyColors.black,size: 20,),
        ),

      ],);
    
  }

  void clickButton(BuildContext context ,String routName){
  Navigator.pushNamed(context, routName);
}
}