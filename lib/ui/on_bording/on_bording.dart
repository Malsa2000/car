import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/home/home.dart';
import 'package:car/ui/login/login.dart';
import 'package:car/ui/on_bording/page1.dart';
import 'package:car/ui/on_bording/page2.dart';
import 'package:car/ui/on_bording/page3.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class OnBording extends StatefulWidget {
  const OnBording({Key? key}) : super(key: key);

  @override
  State<OnBording> createState() => _OnBordingState();
}
class _OnBordingState extends State<OnBording> {
 late PageController _pageController;
 int _currentPage = 0;
  @override
  void initState() {
    _pageController =PageController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           Expanded(
             flex: 3,
             child: PageView(
               controller: _pageController,
               onPageChanged: (int page){
                 setState(() {
                   _currentPage = page;});},
               children: [
                 Page1(),
                 Page2(),
                 Page3(),
               ],
             ),
           ),
           Expanded(
             flex: 1,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                  SizedBox(height: 10.h,),
                  Row(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 dotIndecator(_currentPage,0),
                 dotIndecator(_currentPage,1),
                 dotIndecator(_currentPage,2),
               ],),
                   SizedBox(height: 20.h,),
                   CustomButton(width: 280.w, buttonText: "Get Start", clickButton: clickButton),

           ],))

         ]),
    );
  }
  Widget dotIndecator(int _currentPage ,int index){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 1.5.w),
      height: 5.h,
      width:_currentPage== index? 28.w : 5.w,
      decoration: BoxDecoration(
        color: MyColors.blue2,
        borderRadius: BorderRadius.circular(2.5.r),
      ),
    );
  }
  void visabilty(int page){
 _pageController.animateToPage(page, duration:const Duration(seconds: 2), curve: Curves.bounceOut);
 }
 clickButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
 }
}
