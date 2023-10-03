import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/model/city.dart';
import 'package:car/ui/home/bottom_navigation_button.dart';
import 'package:car/ui/home/home.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class CreateUserAccount extends StatefulWidget {
  const CreateUserAccount({Key? key}) : super(key: key);

  @override
  State<CreateUserAccount> createState() => _CreateUserAccountState();
}

class _CreateUserAccountState extends State<CreateUserAccount> {
  late TextEditingController phoneNumber;
  late TextEditingController password;
  late TextEditingController name;
  late TextEditingController confirmPassword;

  List<City> _city = <City>[
    City(id: 1, name: "type 1"),
    City(id: 2, name: "type 2"),
    City(id: 3, name: "type 3"),
  ];
  int? _id ;

  @override
  void initState() {
    phoneNumber = TextEditingController();
    password = TextEditingController();
    name = TextEditingController();
    confirmPassword = TextEditingController();

    super.initState();
  }
  @override
  void dispose() {
    phoneNumber.dispose();
    password.dispose();
    name.dispose();
    confirmPassword.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomText(text: "انشاء حساب", fontSize: 18.sp, color: MyColors.blue2),),
      body: Column(
        children: [
         Expanded(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 16.w ,vertical: 25.h),
              decoration: BoxDecoration(
                  boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), blurRadius: 6)],
                  color: MyColors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.r),
                    topRight: Radius.circular(50.r),)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(height: 210.h,width: 200.w,
                      image: const AssetImage("images/car1.PNG")),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("انشاء "  ,
                          style :GoogleFonts.cairo(
                              fontSize :30.sp ,
                              height: 1.0,
                              fontWeight:FontWeight.w600 ,
                              color : MyColors.blue2),
                          textAlign: TextAlign.start),
                      SizedBox(width: 10.w,),
                      Text("حساب جديد"  ,
                          style :GoogleFonts.cairo(
                              fontSize :30.sp ,
                              height: 1.0,
                              fontWeight:FontWeight.w300 ,
                              color :Colors.yellow),
                          textAlign: TextAlign.start),
                    ],),
                  SizedBox(height: 25.h,),
                  CustomTextFiled(AllString.name, name),

                  SizedBox(height: 15.h,),
                  CustomTextFiled(AllString.phoneNumber, phoneNumber),

                  SizedBox(height: 15.h,),
                  Container(
                    margin: EdgeInsets.only(bottom: 15.h),
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    height:48.h ,
                    width: 260.w,
                    decoration:const BoxDecoration(
                        boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                        borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                      color: MyColors.white
                     ),
                    child: DropdownButton<int>(
                        icon: const Icon(Icons.arrow_drop_down_sharp ,color: Colors.black,size: 20,),
                        isExpanded: true,
                        underline:Container(color: Colors.transparent),
                        hint: Text(AllString.city),
                        style: GoogleFonts.tajawal(fontSize: 12 ,fontWeight: FontWeight.w400 ,color:
                        MyColors.gray),
                        value: _id ,
                        onChanged: (int? vlaue) {
                          _id = vlaue;
                        },
                        items: _city.map((City) =>
                            DropdownMenuItem<int>(
                              child: Text(City.name),
                              value: City.id,
                            ))
                            .toList()),

                  ),

                  CustomTextFiled(AllString.passwprd, password),

                  SizedBox(height: 15.h,),
                  CustomTextFiled(AllString.confirmPassword, confirmPassword),

                  SizedBox(height: 30.h,),
                  CustomButton(width: 260.w, buttonText: AllString.creatUserAccount,clickButton: creatUserAccount,),
                  SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    CustomText(text: AllString.haveAlredyAccount,
                        textAlign: TextAlign.start,
                        fontSize: 14, color: MyColors.black),
                    TextButton(
                        onPressed:(){},
                        child:
                        CustomText(text: AllString.login,
                            textAlign: TextAlign.start,
                            fontSize: 14, color: MyColors.blue1)
                    ),

                  ],)


                ],),),
          )
        ],
      ),
    );
  }
  void creatUserAccount(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigationBarPage()));
  }
}
