import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/replay/all_replay.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ViewTecit extends StatelessWidget {
   ViewTecit({Key? key}) : super(key: key);

   PageController _pageController = PageController(initialPage: 1, viewportFraction: 0.95);
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: CustomText(text:AllString.viewTecit, fontSize: 18.sp, color: MyColors.blue2)
      ),

      body: ListView(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  maxWidth: 320.w,minWidth: 320.w,
                  maxHeight: 300.h,minHeight: 300.h
              ),
              child: PageView.builder(
                  itemCount: 4,
                  controller: _pageController,
                  onPageChanged: (int pagIndex) {
                     _currentIndex = pagIndex;
                  },
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5.w,vertical: 10.h),
                      alignment: Alignment.center,
                      height: 210.h,
                      width: 230.w,
                      decoration: BoxDecoration(
                          image:const DecorationImage( fit: BoxFit.contain,image: AssetImage(
                              "images/car.jpg"),),
                          borderRadius: BorderRadius.all(Radius.circular(15.r))
                      ),

                    );
                  }),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TabPageSelectorIndicator(backgroundColor:_currentIndex==0? MyColors.blue2:MyColors.gray2,
                    borderColor: Colors.transparent, size: 8),
                TabPageSelectorIndicator(backgroundColor:_currentIndex==1? MyColors.blue2:MyColors.gray2,
                    borderColor: Colors.transparent, size: 8),
                TabPageSelectorIndicator(backgroundColor:_currentIndex==2? MyColors.blue2:MyColors.gray2,
                    borderColor: Colors.transparent, size: 8),
                TabPageSelectorIndicator(backgroundColor:_currentIndex==3? MyColors.blue2:MyColors.gray2,
                    borderColor: Colors.transparent, size: 8),

              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 25.h),
              padding: EdgeInsets.symmetric(horizontal: 16.w ,vertical: 20.h),
              decoration: BoxDecoration(
              color: MyColors.white,
                  boxShadow:const [BoxShadow(color: Color(0xFFf0eee4),blurRadius: 6)],
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30.r),
              topLeft: Radius.circular(50.r),)
              ),child:ListView(
              physics:const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                     viewOneItem(AllString.nameRequreaPecies ,"عجلات سيارة"),
                     viewOneItem(AllString.carColor ,"احمر"),
                     viewOneItem(AllString.vertion ,"M2B5066YTdfffg"),
                     viewOneItem(AllString.quanityRequerd ,"2"),
                     viewOneItem(AllString.carNumber ,"20598777"),
                     viewOneItem(AllString.carType ,"مارسيدس"),
                     viewOneItem(AllString.matiral ,"حديد"),
                     viewOneItem(AllString.note ,"لا يوجد ملاحظات اريد اضافتها"),
                     viewOneItem(AllString.requestState ,"قيد الانتظار"),
                     Container(
              padding: EdgeInsets.all(20.h),
          margin: EdgeInsets.only(bottom: 20.h),
          decoration: BoxDecoration(
              boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
              color: MyColors.white,
              borderRadius: BorderRadius.all(Radius.circular(20.r))
          ),
          child: Row(
            children: [
              CustomText(text: AllString.numberOfReplay, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w800,),
              SizedBox(width: 20.w,),
              CustomText(text: "3", fontSize: 12.sp, color: MyColors.black,),
              const Spacer(),
              IconButton(onPressed: ()=>clickIcon(context), icon: Icon(
                Icons.read_more ,color: MyColors.blue2,size: 35.h,))

            ]
          ),
        ),
                      Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: CustomButton(width: 120.w, buttonText: AllString.delet ,clickButton: clickIcon,)),
                Expanded(child: CustomButton(width: 120.w, buttonText: AllString.update ,clickButton: clickIcon,),
                )
              ],)
    ],))
          ],
        ),

    );
  }

  Widget viewOneItem(String titleName , String answerOfTilte){
    return Container(
      padding: EdgeInsets.all(20.h),
      margin: EdgeInsets.only(bottom: 20.h),
      decoration: BoxDecoration(
          boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
          color: MyColors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.r))
      ),
      child: Row(
        children: [
          CustomText(text: titleName, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w700,),
          const Text("  :  "),
          CustomText(text: answerOfTilte, fontSize: 12.sp, color: MyColors.black,),

        ],
      ),
    );
  }
  void clickIcon(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>ALlReplay()));
  }
}
