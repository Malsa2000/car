import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AllTecitYouAdded extends StatelessWidget {
  const AllTecitYouAdded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: "كل القطع التي اضفتها", fontSize: 18.sp, color: MyColors.blue2),
      ),
      body :ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return tectYouAdded(context);
            }));
  }
  Widget tectYouAdded(BuildContext context) {

    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, "routeName");
      },
      child: Container(
        height: 200.h,
        margin: EdgeInsets.symmetric(vertical: 30.h),
        padding: EdgeInsets.only(left:40.w,right:35.w),
        decoration:const BoxDecoration(
          image: DecorationImage(fit: BoxFit.fitWidth,
              image: AssetImage("images/back.png")),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: 200.h,
              width: 130.w,
              image:const AssetImage("images/car1.jpg") ,
            ),
            SizedBox(width: 10.w,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 120.w,
                  child:CustomText(text: " تحمل آسى قطعة محور عجلات خلفي",
                      fontWeight: FontWeight.w600
                      , fontSize: 13.sp, color: MyColors.black) ,),

                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: AllString.carType,
                        fontWeight: FontWeight.w600
                        , fontSize: 12.sp, color: MyColors.black),
                    CustomText(text: " مارسيدس"
                        , fontSize: 11.sp, color: MyColors.black),

                  ],),
                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: AllString.matiral,
                        fontWeight: FontWeight.w700
                        , fontSize: 12.sp, color: MyColors.black),
                    CustomText(text: "حديد"
                        , fontSize: 12.sp, color: MyColors.gray),

                  ],),

                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(text: AllString.requestState,
                        fontWeight: FontWeight.w700
                        , fontSize: 12.sp, color: MyColors.black),
                    CustomText(text: "تم الرد"
                        , fontSize: 12.sp, color: MyColors.gray),

                  ],),
              ],),
           Container(
             height: 40.h,
             width: 33.w,
             alignment: Alignment.center,
             margin: EdgeInsets.only(top: 3.h),
             padding:EdgeInsets.all(10.h),
             decoration: BoxDecoration(
               color:MyColors.blue1,
               borderRadius: BorderRadius.only(topRight: Radius.circular(16.r))

             ),
             child:    CustomText(text: "3"
                 , fontSize: 18.sp, color: MyColors.blue2),

           )
          ],),
      ),
    );
  }
}
