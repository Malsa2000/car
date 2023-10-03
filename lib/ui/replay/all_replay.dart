import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/view_item/price_view.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ALlReplay extends StatelessWidget {
  const ALlReplay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     double _rate_vlaue = 0;
    return Scaffold(
      // appBar: AppBar(
      //   title: CustomText(text: AllString.allReplayes,
      //   fontSize: 18.sp,
      //       color: MyColors.blue2),),

      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 12.h),
          itemCount: 4,
          itemBuilder: (context,index){
        return CustomListView(context,_rate_vlaue);
      }),

    );
  }
  void clickIcon(BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> PriceView()));
  }
  Widget CustomListView(BuildContext context, double _rate_vlaue){
    return InkWell(
      onTap: ()=>clickIcon(context),
      child: Stack(children: [
        Container(
          width: double.infinity,
           margin: EdgeInsets.only(top: 40.h),
          padding: EdgeInsets.symmetric(horizontal:30.w,vertical: 30.h),
          decoration: BoxDecoration(
              color: MyColors.white,
              boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), blurRadius: 4)],
              borderRadius: BorderRadius.all(Radius.circular(20.r))
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomText(text: "حمد محمد امين ", fontSize: 16.sp, color: MyColors.black,
                fontWeight: FontWeight.w700,),
              CustomText(text: "المحافظة : اربد", fontSize: 12.sp, color: MyColors.black),
              CustomText(text: "السعر : 500\$", fontSize: 12.sp, color: MyColors.black,
                  fontWeight: FontWeight.w600),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 5.h),
                height: 20,
                width: 100.w,
                child: RatingBar.builder(
                  initialRating: 2,
                  minRating: 1,
                  itemSize: 15.0,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding:
                  EdgeInsets.symmetric(horizontal: 0.1.h),
                  itemBuilder: (context, _) =>const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (double rating) {
                    //  widget._rate_vlaue = rating;
                  },
                ),
              ),
            ],),
        ),
        Padding(
          padding: EdgeInsets.only(left: 23.w ,top: 5.h),
          child: CircleAvatar(radius: 66.r,
            backgroundColor: MyColors.white,
            child: CircleAvatar(
            backgroundImage:const AssetImage("images/car.jpg"),
            radius: 56.r,)
            ,),
        ),

      ],)

    );
  }
}
