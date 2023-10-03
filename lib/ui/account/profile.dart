import 'package:car/const/my_color.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "الملف الشخصي", fontSize: 18.sp, color: MyColors.blue2),),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 10.h),
        children: [
          Row(children: [
            CircleAvatar(
              radius: 60.r,
              backgroundImage: AssetImage("images/person.jpg"),
            ),
            SizedBox(width: 20.w,),
            CustomText(text: "اسلام بدوان", fontSize: 17.sp, color: MyColors.blue1,fontWeight: FontWeight.w700,)
          ],),
          Row(children: [
            Expanded(
              child: Container(
                height: 150.h,
                margin: EdgeInsets.all(10.h),
                padding: EdgeInsets.all(20.h),
                decoration: BoxDecoration(
                  boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  CustomText(text: "رقم الحساب", fontSize: 14.sp, color: MyColors.blue2),
                  CustomText(text: "05589235", fontSize: 16.sp, color: MyColors.blue2,fontWeight: FontWeight.w700),

                ],),
              ),
            ),
            Expanded(
              child: Container(
                height: 150.h,
                margin: EdgeInsets.all(10.h),
                padding: EdgeInsets.all(20.h),
                decoration: BoxDecoration(
                  boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                  color: MyColors.white,
                     borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomText(text: " التقييم", fontSize: 14.sp, color: MyColors.blue2),
                    CustomText(text: "4.2", fontSize: 16.sp, color: MyColors.blue2,fontWeight: FontWeight.w700),

                  ],),
              ),
            ),

          ],),
          Row(
            children: [
            Expanded(
              child: Container(
                height: 150.h,
                margin: EdgeInsets.all(10.h),
                padding: EdgeInsets.all(20.h),
                decoration: BoxDecoration(
                  boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                  color: MyColors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r),
                  ),
                ),
                child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(text: "جميع التكت التي اضفتها: 3", fontSize: 14.sp, color: MyColors.blue2),
                    ElevatedButton(
    style: ElevatedButton.styleFrom(
    shadowColor: const Color(0xFFf0eee4),
    primary: MyColors.blue2,
    minimumSize: Size(150, 48.h),
    maximumSize: Size(150, 48.h),
    elevation: 2,
    alignment: AlignmentDirectional.center,
    padding:  EdgeInsets.all(10.h),
    ),
    onPressed: (){},
    child: Text(
    "انتقل",style: GoogleFonts.tajawal(color: Colors.white,fontSize:16.sp ),

    ))
                  ],),
              ),
            ),
            Expanded(
              child: Container(
                height: 150.h,
                margin: EdgeInsets.all(10.h),
                padding: EdgeInsets.all(20.h),
                decoration: BoxDecoration(
                  boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                  color: MyColors.white,
                     borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomText(text: " تعديل الملف الشخصي", fontSize: 14.sp, color: MyColors.blue2),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: const Color(0xFFf0eee4),
                          primary: MyColors.blue2,
                          minimumSize: Size(150, 48.h),
                          maximumSize: Size(150, 48.h),
                          elevation: 2,
                          alignment: AlignmentDirectional.center,
                          padding:  EdgeInsets.all(10.h),
                        ),
                        onPressed: (){},
                        child: Text(
                          "انتقل",style: GoogleFonts.tajawal(color: Colors.white,fontSize:16.sp ),

                        ))

                  ],),
              ),
            ),

          ],),

        ],
      ),
    );
  }
}
