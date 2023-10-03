import 'dart:io';
import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
class MonthPay extends StatelessWidget {
   MonthPay({super.key});
TextEditingController _oprationNumber = TextEditingController();
  final imagePicker = ImagePicker();
  File? paths;
  File? file;
  Future<void> getImage() async {
    XFile? pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {

     file = File(pickedImage.path);
      // file = File(pickedImage.path);
      paths = file!;
    }
    print(" malsa  FileName is : ${paths.toString()}");
  }
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:
        CustomText(text: "اشتراك شهري", fontSize: 18.sp, color: MyColors.blue2),
      elevation: 0,),
      body:ListView(
        padding: EdgeInsets.symmetric(horizontal: 26.w,vertical: 30.h),
        children: [
       CustomText(text: "للاشتراك يجب عليك دفع رسوم 30 دينار اردني", fontSize: 18.sp, color: MyColors.black),
       SizedBox(height: 30.h,),
       CustomText(text: "ادخل رقم العملية!", fontSize: 14.sp, color: MyColors.black),
        CustomTextFiled("ادخل رقم العملية", _oprationNumber),
              
         SizedBox(height: 30.h,),
        CustomText(text: "ادخل صورة لرقم الحوالة", fontSize: 14.sp, color: MyColors.black),
         Container(
          margin: EdgeInsets.symmetric(vertical: 10.h),
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.background),
            borderRadius: BorderRadius.all(Radius.circular(20.r))
          ), child:
             Column(children: [
          paths == null ? IconButton(onPressed: ()=> getImage(),
           icon: Icon(Icons.add ,size: 30.h,))
          :Image(image:FileImage(paths!)),
               CustomText(text: "قم باضافة صورة ", fontSize: 14.sp, color: MyColors.blue2)
             ],)

         ),


        CustomButton(width: 230.w, buttonText: "طلب اشتراك شهري", 
        clickButton:()=>showDailalog(context)),
      ]),
    );
  }


 Future showDailalog(BuildContext context){
    return showDialog(context: context, builder: (context)=> AlertDialog(
      clipBehavior: Clip.antiAlias,
      backgroundColor: Colors.transparent,
      content: Container(
          height: 350.h,
          width : 375.w,
          padding: EdgeInsets.all(12.h),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20),)

          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.check,size: 100.h,color: Colors.green,),
              SizedBox(height: 25.h,),
              CustomText(text: AllString.pay_month_massage, fontSize: 14.sp, color: MyColors.black,
                fontWeight: FontWeight.w600,),
              SizedBox(height: 20.h,),
              CustomButton(width: 300.w, buttonText:"موافق", clickButton: (){})

            ],)




      ),
    ));


  }


}