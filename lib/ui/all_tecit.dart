import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AllTecit extends StatefulWidget {
   AllTecit({Key? key}) : super(key: key);

  @override
  State<AllTecit> createState() => _AllTecitState();
}

class _AllTecitState extends State<AllTecit> {
  List<String> title=["قطع سيارات" ,"قطع حاسوب","قطع الكترونية","قطع ميكانيكية"];

   List<String> subTitle=["مارسيدس" ," BMW "," Ferna "," Scoda ","Remish"];

   List<String> subTitleElectronic=["  cpu  " ," hardware "," mouse "," keypord ","device"];

   List<String> emptyList=[];
   bool _click = false;

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.blue1,
        elevation: 0,
        centerTitle: true,
        title: CustomText(text: "كل التكتك المضافة", fontSize: 20.sp, color: MyColors.white),),
      body: ListView(
        children:[
          Container(
            padding: EdgeInsets.only(bottom: 20.h),
              decoration: BoxDecoration(
                  color: MyColors.blue1,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.r),
                      bottomLeft: Radius.circular(30.r))
              ),
            child: Column(
            children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 70.h,
                  maxHeight: 70.h,
                  minWidth: 350.w,
                  maxWidth: 350.w
              ),
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                    return Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10.h),
                      margin: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                          color: index==0 ? MyColors.gray:MyColors.background,
                          borderRadius: BorderRadius.all(Radius.circular(25.r))
                      ),
                      child: TextButton(child:
                      CustomText(text: title[index], fontSize: 14.sp, color:MyColors.black
                      ),
                       onPressed: (){
                        if(title[index] =="قطع سيارات"){
                          setState(() {
                            _click =!_click;
                            emptyList = subTitle;
                          });
                        }
                       else if(title[index] =="قطع حاسوب"){
                          setState(() {
                            _click =!_click;
                            emptyList = subTitleElectronic;
                          });
                        }
                       }),
                    );
                  }),
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 70.h,
                  maxHeight: 70.h,
                  minWidth: 350.w,
                maxWidth: 350.w
              ),
              child: ListView.builder(
                    itemCount: emptyList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(15.h),
                        margin: EdgeInsets.all(10.h),
                        decoration: BoxDecoration(
                            color: index==0 ? MyColors.gray:MyColors.background,
                            borderRadius: BorderRadius.all(Radius.circular(25.r))
                        ),
                        child: CustomText(text:emptyList[index], fontSize: 13.sp, color:MyColors.black),
                      );
                    }),
            ),
            ],)),
          ConstrainedBox(
             constraints: BoxConstraints(
               maxWidth: 350.w,
                 minWidth: 350.w,
                 maxHeight: 800.h,
                 minHeight: 800.h
             ),
             child: GridView.builder(
               itemCount: 7,
               padding: EdgeInsets.symmetric(horizontal: 16.h),
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 10.h,
              crossAxisCount: 2,
              crossAxisSpacing: 10.w,
              childAspectRatio: 130/150
          ),
                itemBuilder: (context,index){
              return allTectAdded();
                }),
           ),
      ]),
    );
  }

   Widget allTectAdded() {
     return Container(
       width: 150.w,
       padding: EdgeInsets.all(15.h),
       margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
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
               CustomText(text: "500\$"
                   , fontSize: 12.sp, color: MyColors.gray),

             ],),
         ],),
     );
   }
}
