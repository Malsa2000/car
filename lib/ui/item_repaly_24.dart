import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class ItemReplay24 extends StatelessWidget {
  const ItemReplay24({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children:[
          Expanded(
            child: ConstrainedBox(
            constraints: BoxConstraints(
                maxWidth: 350.w,
                minWidth: 350.w,
                maxHeight: 800.h,
                minHeight: 800.h
            ),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 5,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5.h,
                    crossAxisCount: 2,
                    crossAxisSpacing: 5.w,
                    childAspectRatio: 35/50
                ),
                itemBuilder: (context,index){
                  return allTectAdded(context);
                }),
        ),
          ),
     ] );
  }

  Widget allTectAdded(BuildContext context) {
    return Stack(children: [
      Container(
      width: 200.w,
      alignment: Alignment.center,
      padding: EdgeInsets.all(15.h),
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        boxShadow: const [
          BoxShadow(
              color: Color(0xFFf0eee4), blurRadius: 4)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
              width: 100.w,
              height: 100.h,
              image: const AssetImage("images/car.jpg")),
          SizedBox(
            width: 135.w, height: 30.h,
            child: CustomText(text: " تحمل آسى قطعة محور عجلات خلفي",
                fontWeight: FontWeight.w700
                , fontSize: 12.sp, color: MyColors.black),
          ),
          SizedBox(height: 15.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(text: " نوع السيارة",
                  fontWeight: FontWeight.w500
                  , fontSize: 11.sp, color: MyColors.black),
              CustomText(text: " مارسيدس"
                  , fontSize: 11.sp, color: MyColors.black),

            ],),
          SizedBox(height: 5.h,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            CustomText(text: "السعر",
                  fontWeight: FontWeight.w500
                  , fontSize: 12.sp, color: MyColors.black),
              SizedBox(width: 20.w,),
              Text("900\$"  ,
                  style :GoogleFonts.cairo(
                      fontSize :12 ,
                      decoration: TextDecoration.lineThrough,
                      height: 1.2,
                      color :MyColors.gray),
                  textAlign: TextAlign.start),
              SizedBox(width: 5.w,),
              CustomText(text: "500\$",
                  fontWeight: FontWeight.w700
                  , fontSize: 14.sp, color: MyColors.blue2),

            ],),
        ],),
      ),
      InkWell(
        onTap: (){
          showDailalog(context);
        },
        child: Container(
        height: 43.h,
        width: 100.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: MyColors.blue1,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.r),
            bottomLeft: Radius.circular(20.r),
            topLeft: Radius.circular(20.r),
          )
        ),
        child: CustomText(text: "اطلب القطعة", fontSize: 16.sp, color:
        MyColors.blue2),
    ),
      ),

    ]);
  }

  Future showDailalog(BuildContext context){
    return showDialog(context: context, builder: (context)=> AlertDialog(
      clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.transparent,
      content:Stack(
        children: [
          Container(
              height: 290.h,
              margin: EdgeInsets.only(top:30.h),
              padding: EdgeInsets.only(top:100.h,left: 15.w,right: 15.w),
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
                  CustomText(text: AllString.ordeTheItem, fontSize: 16.sp, color: MyColors.black,
                    fontWeight: FontWeight.w600,),
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomButton(width: 85.w, buttonText:"نعم", clickButton: (){
                        Navigator.pushNamed(context, "applay_request");}),
                      CustomButton(width: 85.w, buttonText:"لا", clickButton: (){
                        Navigator.pop(context);})
                    ],)




                ],)),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 100.h),
            child: CircleAvatar(backgroundColor: MyColors.white,
              backgroundImage: AssetImage("images/true.png"),
              radius: 50.r,),
          )
        ],)

    ));


  }

}
