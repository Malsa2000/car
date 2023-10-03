import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ApplyRequest extends StatelessWidget {
  const ApplyRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController?  writeSth = TextEditingController();
    TextEditingController?  delivery = TextEditingController();
    TextEditingController?  price = TextEditingController();
    bool click= false;
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text:"كل العناصر المضافة", fontSize: 18.sp, color: MyColors.blue2),
      ),

      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 20.h),
        children: [
          Padding(
            padding: EdgeInsets.only(top:20.h,bottom: 5.h),
            child:CustomText(text: AllString.shortDescription, fontSize: 14.sp, color: MyColors.black),
          ),
          CustomTextFiled(AllString.writeSth, writeSth!),
          Padding(
              padding: EdgeInsets.only(top:20.h,bottom: 5.h),
              child:CustomText(text: AllString.price, fontSize: 14.sp, color: MyColors.black)),
          CustomTextFiled(AllString.price, price!),
          Padding(
              padding: EdgeInsets.only(top:10.h),
              child: CustomText(text: AllString.price3, fontSize: 12.sp, color: Colors.red)),

          Padding(
              padding: EdgeInsets.only(top:20.h,bottom: 5.h),
              child:CustomText(text: AllString.delivery, fontSize: 14.sp, color: MyColors.black)),
          CustomTextFiled(AllString.delivery, delivery!),
          Padding(
              padding: EdgeInsets.only(top:10.h,bottom: 10.h),
              child:CustomText(text: AllString.delivery2, fontSize: 12.sp, color: Colors.red)),

          Padding(
              padding: EdgeInsets.only(top:20.h,bottom: 5.h),
              child:CustomText(text: "حالة القطعة", fontSize: 14.sp, color: MyColors.black)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 5.w,vertical: 10.h),
              height:40.h ,
              width: 80.w,
              decoration: BoxDecoration(
                //color: click == true? MyColors.blue1:MyColors.background,
                  color: MyColors.blue1,
                  borderRadius: BorderRadius.all(Radius.circular(10.r))),
                  child: CustomText(text: AllString.good, fontSize: 14.sp,
                      color:MyColors.white),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 5.w,vertical: 10.h),
              height:40.h ,
              width: 80.w,
              decoration: BoxDecoration(
                  //color: click == true? MyColors.blue1:MyColors.background ,
                  color: MyColors.blue1,
                  borderRadius: BorderRadius.all(Radius.circular(10.r))),
              child: CustomText(text: AllString.news, fontSize: 14.sp,
                  color:MyColors.blue2),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: 5.w,vertical: 10.h),
              height:40.h ,
              width: 80.w,
              decoration: BoxDecoration(
                 // color: click == true? MyColors.blue1:MyColors.background ,
                  color: MyColors.blue1,
                  borderRadius: BorderRadius.all(Radius.circular(10.r))),
              child: CustomText(text: AllString.old, fontSize: 14.sp,
                  color:MyColors.blue2),
            ),

          ],),

          Padding(
              padding: EdgeInsets.only(top:20.h),
              child:CustomText(text: "اضف صورا للقطعة", fontSize: 14.sp, color: MyColors.black)),
          Padding(
              padding: EdgeInsets.only(top:5.h,),
              child:CustomText(text: AllString.addImages, fontSize: 12.sp, color: Colors.red)),
          Wrap(
            children: [
            Container(
              height: 90.h,
              width: 90.w,
              margin: EdgeInsets.symmetric(vertical: 10.h),
              decoration: BoxDecoration(
                border: Border.all(color: MyColors.black,width: 0.3),
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
              ),
              child: IconButton(onPressed: (){},icon: Icon(Icons.add,size: 30.h,)),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 100.h,
                  minWidth: 200.w,
                  minHeight: 100.h,
                  maxWidth: 200.w

              ),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,

                  itemCount: 2,
                  itemBuilder: (context,index){
                    return Container(
                      height: 90.h,
                      width: 90.w,
                      margin: EdgeInsets.symmetric(vertical: 10.h,horizontal: 5.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          image:const DecorationImage(fit: BoxFit.contain,
                              image: AssetImage("images/car.jpg"))
                      ),
                    );
                  }),
            )
          ],),
           SizedBox(height: 30.h,),
          CustomButton(width: 350.w, buttonText: AllString.addReplay, clickButton: clickButton)


        ],
      ),
    );
  }
  void clickButton(BuildContext context){

  }
}
