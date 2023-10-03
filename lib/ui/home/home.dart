import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/add_new_tecit/add__new_tecit.dart';
import 'package:car/ui/all_tecet_you_added.dart';
import 'package:car/ui/all_tecit.dart';
import 'package:car/ui/drawer_screens/drawer.dart';
import 'package:car/ui/home/bottom_navigation_button.dart';
import 'package:car/ui/setting.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 
 late PageController _pageController;
  int _currentIndex = 0;
  List<String> _image_pageview = <String>[
    "car1",
    "car2",
    "car1",
    "car1",
  ];
  List<String> _text = <String>[
    AllString.addAllTecet,
    AllString.tectetYouAdded,
    "عرض على قطع لمدة 24 ساعة",
    AllString.addNewTecet,

  ];
  List<String> _routes = <String>[
    "all_tecit_add",
    "all_tecit_you_added",
    "item_replay24",
    "car1",
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.87);
  }
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   ListView(
        children: [
          header(),
          Padding(
            padding: EdgeInsets.only(left: 16.w,top: 20.h,right: 16.w),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
             CustomText(text: AllString.addAllTecet, fontSize: 16.sp, 
             color: MyColors.black,fontWeight: FontWeight.w700,),
            TextButton(onPressed: (){
              Navigator.pushNamed(context, "all_tecit_add");
            }, child:
           CustomText(text: "عرض المزيد", fontSize: 16.sp, 
           color: Colors.blue,fontWeight: FontWeight.w600,),
)
            ],)),
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: 347.w,
                minHeight: 260.h,
                maxHeight: 260.h,
                maxWidth: 347.w
            ),
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return allTectAdded();
                }),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.w,top: 20.h,right: 16.w),
            child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
              CustomText(text: AllString.tectetYouAdded,
                fontSize: 16.sp, color: MyColors.black,fontWeight: FontWeight.w700,),
              TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, "all_tecit_you_added");
                },
                child: CustomText(text: "عرض المزيد", fontSize: 16.sp,
                  color: Colors.blue,fontWeight: FontWeight.w600,),
              )
          ])
        ),
          ConstrainedBox(
            constraints: BoxConstraints(
                minWidth: 347.w,
                minHeight: 200.h,
                maxHeight: 200.h,
                maxWidth: 347.w
            ),
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return tectYouAdded();
                }),
          ),
        ],);
    
  }

  Widget allTectAdded() {
    return Container(
      width: 150.w,
      padding: EdgeInsets.all(20.h),
      margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.r)),
        boxShadow: const [
          BoxShadow(color: Color(0xFFf0eee4), blurRadius: 8)
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Container(
        width: 130.w,
        height: 100.h,
        decoration :BoxDecoration(
          image:const DecorationImage(image: AssetImage("images/car.jpg")),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10.r) ,
              bottomRight: Radius.circular(10.r),
              bottomLeft: Radius.circular(10.r),

          ),
        ),),
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
              fontWeight: FontWeight.w600
              , fontSize: 11.sp, color: MyColors.black),
          CustomText(text: " مارسيدس"
              , fontSize: 11.sp, color: MyColors.black),

        ],),
        SizedBox(height: 5.h,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          CustomText(text: "السعر",
              fontWeight: FontWeight.w600
              , fontSize: 12.sp, color: MyColors.black),
          CustomText(text: "500\$"
              , fontSize: 12.sp, color: MyColors.gray),

        ],),
      ],),
    );
  }

  Widget tectYouAdded() {
    return Container(
      padding: EdgeInsets.all(10.h),
      margin: EdgeInsets.symmetric(horizontal: 5.w,vertical: 10.h),
      width: 320.w,
      height: 100.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: MyColors.white,
          boxShadow: const [
            BoxShadow(color: Color(0xFFf0eee4), blurRadius: 8)
          ],
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30.r),
            bottomLeft: Radius.circular(30.r),
            topLeft: Radius.circular(30.r))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            width: 160.w,
            fit: BoxFit.contain,
            image:const AssetImage("images/car1.jpg") ,
           ),
          SizedBox(width: 10.w,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 130.w,
                child:CustomText(text: " تحمل آسى قطعة محور عجلات خلفي",
                    fontWeight: FontWeight.w700
                    , fontSize: 14.sp, color: MyColors.black) ,),

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
                  CustomText(text: AllString.requestState,
                      fontWeight: FontWeight.w700
                      , fontSize: 13.sp, color: MyColors.black),
                  CustomText(text: "تم الرد"
                      , fontSize: 12.sp, color: MyColors.blue1),

                ],),
            ],),
        ],),
    );


  }
  void clickButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTecit()));
  }
  Widget header()  {
    return Column(
      children: [
      ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: 350.w,
            minHeight: 210.h,
            maxHeight: 210.h,
            maxWidth: 350.w
        ),
        child:  PageView.builder(
              itemCount: 4,
              controller: _pageController,
              onPageChanged: (int pagIndex) {
                setState(() => _currentIndex = pagIndex);
              },
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 15.w ,left: 7.w,right: 7.w),
                  padding: EdgeInsets.zero,
                  alignment: Alignment.topCenter,
                  height: 190.h,
                  width: 240.w,
                  decoration: BoxDecoration(
                      image: DecorationImage( fit: BoxFit.fitWidth,image: AssetImage(
                          "images/${_image_pageview[index]}.jpg"),),
                      borderRadius: BorderRadius.all(Radius.circular(15.r))
                  ),
                   child: Container(
                     padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
                     height: 190.h,
                     width: 290.w,
                     alignment: Alignment.bottomLeft,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.all(Radius.circular(15.r)),
                         gradient:const LinearGradient(
                         end: Alignment.bottomCenter,
                           begin: Alignment.topCenter,
                           colors: [
                             Colors.transparent,
                             Colors.black12,
                             Colors.black54,
                             Colors.black87,
                             Colors.black
                           ]
                       ),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.end,
                       children: [
                         CustomButton(width: 70.w, buttonText: "انتقل للاعلان", clickButton:(){} ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           CustomText(text: " 05%", fontSize: 18.sp, color: MyColors.white,fontWeight: FontWeight.w900,),
                           CustomText(text: " شركة السودة للسيارات", fontSize: 16.sp, color: MyColors.white,fontWeight: FontWeight.w800,),
                           CustomText(text: "متخصصة في بيع قطع الغيار للسيارات", fontSize: 11.sp, color: MyColors.white,fontWeight: FontWeight.w300,)
                         ],),
                     ],)
                   ),
                );
              }),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        dotIndecator(_currentIndex,0),
        dotIndecator(_currentIndex,1),
        dotIndecator(_currentIndex,2),
        dotIndecator(_currentIndex,3),

      ],)

    ],);
}
  Widget catogres(){
 return ConstrainedBox(
    constraints: BoxConstraints(
        minWidth: 300.w,
        minHeight: 120.h,
        maxHeight: 120.h,
        maxWidth: 300.w
    ),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount:4,
        itemBuilder:(context,index){
          return InkWell(
            onTap:()=> clickCatogres(_routes[index]),
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 10.w),
              padding: EdgeInsets.all(10.h),
              decoration:BoxDecoration(
                color:MyColors.blue1,
                boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(0, 4), blurRadius: 4)],
                borderRadius: BorderRadius.only(topRight: Radius.circular(16.r),
                  bottomLeft: Radius.circular(16.r),
                  bottomRight: Radius.circular(16.r),),

              ),
              height :160.h,
              width:80.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   const Icon(Icons.settings,color: MyColors.white,),
                    SizedBox(height: 13.h,),
                    CustomText(text: _text[index], fontSize: 12.sp, color: Colors.white,
                      fontWeight: FontWeight.w600,),

                  ],)
             ),
          );
        }
    ),
  );
}
  void clickCatogres(String routs){
    Navigator.pushNamed(context, routs);
  }
 Widget dotIndecator(int _currentPage ,int index){
   return  Container(
     margin: EdgeInsets.symmetric(horizontal: 1.5.w),
     height: 6.h,
     width:_currentPage== index? 28.w : 5.w,
     decoration: BoxDecoration(
       color: MyColors.blue2,
       borderRadius: BorderRadius.circular(2.7.r),
     ),
   );
 }

}
