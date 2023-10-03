import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/view_item/price_view2.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class PriceView extends StatelessWidget {
  const PriceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: CustomText(text:AllString.oredeItem, fontSize: 18.sp, color: MyColors.blue2),
      ),
      body: ListView(
            padding: EdgeInsets.symmetric(horizontal: 23.w,vertical: 20.h),
            children: [
          CustomText(text:"كل بيانات القطعة التي تريد طلبها", fontSize: 18.sp, color: MyColors.black,fontWeight: FontWeight.w600,),

            ListTile(
            leading:const Icon(Icons.check,color: MyColors.black,),
            style: ListTileStyle.drawer,
            shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.5)),
            title:CustomText(text:AllString.carType, fontSize: 16.sp, color: MyColors.black,fontWeight: FontWeight.w500,),
             subtitle:CustomText(text:"مارسيدس", fontSize: 12.sp, color: MyColors.black)
    ),
            ListTile(leading:const Icon(Icons.check,color: MyColors.black,),
              style: ListTileStyle.drawer,
              shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.5)),
              title:CustomText(text:AllString.carNumber, fontSize: 16.sp, color: MyColors.black,fontWeight: FontWeight.w500,),
              subtitle:CustomText(text:"059984546", fontSize: 12.sp, color: MyColors.black)
          ),
            ListTile(leading:const Icon(Icons.check,color: MyColors.black,),
              style: ListTileStyle.drawer,
              shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.5)),
              title:CustomText(text:AllString.price, fontSize: 12.sp, color: MyColors.black,fontWeight: FontWeight.w500,),
              subtitle:CustomText(text:"500\$", fontSize: 12.sp, color: MyColors.black)
          ),
            ListTile(leading:const Icon(Icons.check,color: MyColors.black,),
              style: ListTileStyle.drawer,
              shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.5)),
              title:CustomText(text:AllString.vertion, fontSize: 12.sp, color: MyColors.black,fontWeight: FontWeight.w500,),
              subtitle:CustomText(text:"55504505FFl454", fontSize: 12.sp, color: MyColors.black)
          ),
            ListTile(leading:const Icon(Icons.check,color: MyColors.black,),
              style: ListTileStyle.drawer,
              shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.5)),
              title:CustomText(text:AllString.quanityRequerd, fontSize: 12.sp, color: MyColors.black,fontWeight: FontWeight.w500,),
              subtitle:CustomText(text:"2", fontSize: 12.sp, color: MyColors.black)
          ),
          ListTile(leading:const Icon(Icons.check,color: MyColors.black,),
              style: ListTileStyle.drawer,
              shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.5)),
              title:CustomText(text:AllString.nameRequreaPecies, fontSize: 12.sp, color: MyColors.black,fontWeight: FontWeight.w500,),
              subtitle:CustomText(text:"عجلات", fontSize: 12.sp, color: MyColors.black)
          ),
          ListTile(leading:const Icon(Icons.check,color: MyColors.black,),
              style: ListTileStyle.drawer,
              shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.5)),
              title:CustomText(text:AllString.deliveryCost, fontSize: 12.sp, color: MyColors.black,fontWeight: FontWeight.w500,),
              subtitle:CustomText(text:"2\$", fontSize: 12.sp, color: MyColors.black)
          ),
          ListTile(leading:const Icon(Icons.check,color: MyColors.black,),
              style: ListTileStyle.drawer,
              shape:const Border(bottom: BorderSide(color: MyColors.background,width: 0.5)),
              title:CustomText(text:AllString.descriptionRequreaPecies, fontSize: 12.sp, color: MyColors.black,fontWeight: FontWeight.w500,),
              subtitle:CustomText(text:"عجل لسيارة كبير", fontSize: 12.sp, color: MyColors.black)
          ),
          SizedBox(height: 20.h,),
          CustomText(text: AllString.itemImage, fontSize: 12.sp, color: MyColors.black),
          SizedBox(
            height: 120.h,
            width: 120.w,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(vertical: 25.h),
              scrollDirection: Axis.horizontal,
              itemCount: 2,
                itemBuilder: (context,index){
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w),
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  border: Border.all(color: MyColors.black,width: 0.3),
                  boxShadow:const [BoxShadow( color: Color(0xFFf0eee4),blurRadius: 2)],
                  borderRadius: BorderRadius.all(Radius.circular(15.r)),
                ),
                child:const Image(image: AssetImage("images/car1.jpg"),fit: BoxFit.contain ,
                height: 80,width: 80,),
              );
            }),
          ),
          CustomButton(width: 350.w, buttonText: AllString.oredeItem, clickButton: (){
            showDailalog(context);
          })

        ],),
    );
  }

  Future showDailalog(BuildContext context){
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(text: "تأكيد عملية الطلب", fontSize: 17.sp, color: MyColors.black,),
                  SizedBox(height: 20.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomButton(width: 80.w, buttonText:"تأكيد", clickButton: (){
                          Navigator.pushNamed(context, "price_view2");}),
                      ),
                      SizedBox(width: 20.w,),
                      Expanded(
                        child: CustomButton(width: 80.w, buttonText:"الغاء", clickButton: (){
                        Navigator.pop(context);}))
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
