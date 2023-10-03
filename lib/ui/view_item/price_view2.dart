import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PriceView2 extends StatefulWidget {
  const PriceView2({Key? key}) : super(key: key);

  @override
  State<PriceView2> createState() => _PriceView2State();
}

class _PriceView2State extends State<PriceView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:CustomText(text: AllString.informationConect, fontSize: 18.sp, color: MyColors.blue2),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: MyColors.white,
            boxShadow:const [BoxShadow( color: Color(0xFFf0eee4),blurRadius: 6)],
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40.r),
              topLeft: Radius.circular(40.r),
            )
        ),
        margin: EdgeInsets.only(top: 20.h),
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 23.w,vertical: 30.h),
          children: [
          CustomText(text: AllString.informationConect, fontSize: 16.sp, color: MyColors.blue1),

            ListTile(leading:const Icon(Icons.place_outlined,color: MyColors.blue1,),
                style: ListTileStyle.drawer,
                shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.5)),
                title:CustomText(text:AllString.bayerAddress, fontSize: 14.sp, color: MyColors.blue2,fontWeight: FontWeight.w500,),
                subtitle:CustomText(text:"غزة - حي التفاح -اخر شارع النخيل", fontSize: 12.sp, color: MyColors.black)
            ),
            ListTile(leading:const Icon(Icons.call,color: MyColors.blue1,),
                style: ListTileStyle.drawer,
                shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.5)),
                title:CustomText(text:AllString.phoneNumber, fontSize: 14.sp, color: MyColors.blue2,fontWeight: FontWeight.w500,),
                subtitle:CustomText(text:"059916558", fontSize: 12.sp, color: MyColors.black)
            ),
            ListTile(
              //leading: Icon(Icons.whatsapp,color: MyColors.blue1,),
                style: ListTileStyle.drawer,
                shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.5)),
                title:CustomText(text:AllString.whatsapNumber, fontSize: 14.sp, color: MyColors.blue2,fontWeight: FontWeight.w500,),
                subtitle:CustomText(text:"+059 0599 16558", fontSize: 12.sp, color: MyColors.black)
            ),
            ListTile(leading:const Icon(Icons.location_city_outlined,color: MyColors.blue1,),
                style: ListTileStyle.drawer,
                shape:const Border(bottom: BorderSide(color: MyColors.blue1,width: 0.5)),
                title:CustomText(text:AllString.cityName, fontSize: 14.sp, color: MyColors.blue2,fontWeight: FontWeight.w500,),
                subtitle:CustomText(text:"غزة", fontSize: 12.sp, color: MyColors.black)
            ),
            SizedBox(height: 25.h,),
            CustomText(text: AllString.notePrice, fontSize: 17.sp, color:
            MyColors.blue1,fontWeight: FontWeight.w600,),

            SizedBox(height: 15.h,),
            CustomText(text: AllString.notePrice1, fontSize: 14.sp, color:
            MyColors.black),

            Wrap(children: [
              CustomText(text: AllString.notePrice, fontSize: 14.sp, color:
              Colors.red),
              CustomText(text: AllString.notePrice2, fontSize: 12.sp, color:
              MyColors.black),
            ],),
            SizedBox(height: 60.h,),
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Expanded(child: CustomButton(width: 130.w, buttonText: AllString.backToHome, clickButton: showDailalog)),
               Expanded(child:CustomButton(width: 130.w, buttonText: AllString.backToReplay, clickButton: (){
                 Navigator.pushNamed(context, "all_replayes");

  }),)

],)
          ],),
      ),
    );
  }

  void clickBackToHome(){
    Navigator.pushNamed(context, "enter_code");
  }

  Future showDailalog(){
    return showDialog(context: context, builder: (context)=> AlertDialog(
      clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.transparent,
      content: Stack(
        children: [
          Container(
              height: 290.h,
              margin: EdgeInsets.only(top:30.h),
              padding: EdgeInsets.only(top:100.h,left: 20.w,right: 20.w),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(text: AllString.errorMassaegs, fontSize: 18.sp, color: MyColors.black,
                    fontWeight: FontWeight.w600,),
                  SizedBox(height: 20.h,),
                  CustomButton(width: 300.w, buttonText:"انتقل لصفحة الدفع", clickButton: clickBackToHome)

                ],)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100.h),
            child: CircleAvatar(backgroundColor: MyColors.white,
              backgroundImage: AssetImage("images/fail.png"),
              radius: 50.r,),
          )
        ],)
    ));


  }


}
