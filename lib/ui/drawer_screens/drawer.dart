import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customDrawerContent(BuildContext context){
  return ListView(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        height: 150.h,
        decoration: BoxDecoration(
            color:MyColors.blue1,
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.r))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage:const AssetImage("images/car.jpg"),
              radius: 30.r,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              CustomText(text: "Ali@gmail.com", fontSize: 18.sp,
                color: MyColors.white,fontWeight: FontWeight.w600,),
              CustomText(text: "Ali Ahmad", fontSize: 14.sp, color: MyColors.background)

            ],)
          ],),

      ),

      ListTile(
        onTap:()=>clickButton(context ,"home") ,
          title: CustomText(text: "الصفحة الرئيسية", fontSize: 12.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.3)),
          leading:const Icon(Icons.home_outlined,color: MyColors.black,size: 20,),
          ),
      ListTile(
        //onTap:()=>clickButton(context ,"enter_code") ,
        title: CustomText(text:AllString.notifcations, fontSize: 12.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.3)),
          leading:const Icon(Icons.notifications_none_sharp,color: MyColors.black,size: 20,),
   ),


      ListTile(
        onTap:()=>clickButton(context ,"applay_request") ,
        title: CustomText(text: "حساب المستخدم", fontSize: 12.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.3)),
          leading:const Icon(Icons.account_circle_outlined,color: MyColors.black,size: 20,),
         ),
      ListTile(
        onTap:()=>clickButton(context ,"change_password") ,
        title: CustomText(text: "تغير كلمة المرور", fontSize: 12.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.3)),
          leading:const Icon(Icons.security,color: MyColors.black,size: 20,),
      ),

      ListTile(
        onTap:()=>clickButton(context ,"evaluat_uaer") ,
        title: CustomText(text:AllString.payMonth, fontSize: 12.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.3)),
          leading:const Icon(Icons.payment,color: MyColors.black,size: 20,),
      ),
      ListTile(
        //onTap:()=>clickButton(context ,"home") ,
        title: CustomText(text:AllString.payer, fontSize: 12.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.3)),
          leading:const Icon(Icons.account_balance,color: MyColors.black,size: 20,),
      ),

      ListTile(
        onTap:()=>clickButton(context ,"connect_us") ,
        title: CustomText(text:AllString.callUs, fontSize: 12.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.3)),
          leading:const Icon(Icons.call,color: MyColors.black,size: 20,),
      ),
      ListTile(
        onTap:()=>clickButton(context ,"policy") ,
        title: CustomText(text:AllString.policyTitle, fontSize: 12.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.3)),
  leading:const Icon(Icons.policy,color: MyColors.black,size: 20,),
   ),
      ListTile(
        onTap:()=>clickButton(context ,"user_condations") ,
        title: CustomText(text:AllString.usesCondations, fontSize: 12.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.3)),
          leading:const Icon(Icons.verified_user_outlined,color: MyColors.black,size: 20,),
       ),
      ListTile(
          title: CustomText(text:AllString.aboutApp, fontSize: 12.sp, color: MyColors.black),
          shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.3)),
          leading:const Icon(Icons.abc_outlined,color: MyColors.black,size: 20,),
        ),

    ],);

}
void clickButton(BuildContext context ,String routName){
  Navigator.pushNamed(context, routName);
}