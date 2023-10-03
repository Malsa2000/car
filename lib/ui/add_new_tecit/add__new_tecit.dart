import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/model/car_type.dart';
import 'package:car/model/car_color.dart';
import 'package:car/ui/add_new_tecit/add_new_tecit2.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AddNewTecit extends StatefulWidget {
  const AddNewTecit({Key? key}) : super(key: key);

  @override
  State<AddNewTecit> createState() => _AddNewTecitState();
}

class _AddNewTecitState extends State<AddNewTecit> {

  int? _idCar ,_idColor ,_idPeces ;
  late TextEditingController _vertionController;
  late TextEditingController _numberController;
  late TextEditingController  _matrialController;
  late TextEditingController  _numberMackController;
  late TextEditingController  _vinNumberController;

  @override
  void initState() {
    _vertionController =TextEditingController();
    _numberController =TextEditingController();
    _matrialController =TextEditingController();
    _numberMackController =TextEditingController();
    _vinNumberController =TextEditingController();

    super.initState();
  }
  @override
  void dispose() {
    _vertionController.dispose();
    _numberController.dispose();
    _matrialController.dispose();
    _numberMackController.dispose();
    _vinNumberController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title:CustomText(text: AllString.addNewTecet,
          fontSize: 20.sp, color: MyColors.blue2,fontWeight: FontWeight.w600,)),

        body:ListView(
          padding: EdgeInsets.symmetric(horizontal: 16.w ,vertical: 20.h),
          children: [


            CustomText(text:AllString.carType, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
            Container(
              margin: EdgeInsets.only(top: 10.h,bottom: 20.h),
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height:48.h ,
              width: 260.w,
              decoration:const BoxDecoration(
                  boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                  borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
                  color: MyColors.white
              ),
              child: DropdownButton<int>(
                  icon: const Icon(Icons.arrow_drop_down_sharp ,color: Colors.black,size: 20,),
                  isExpanded: true,
                  underline:Container(color: Colors.transparent),
                  hint: CustomText(text: AllString.carType, fontSize: 14.sp, color: MyColors.gray2),
                  value: _idCar ,
                  onChanged: (int? vlaue) {
                    _idCar = vlaue;
                  },
                  items: AllString.carTypeList.map((CarType) =>
                      DropdownMenuItem<int>(
                        child: Text(CarType.name),
                        value: CarType.id,
                      ))
                      .toList()),

            ),
            SizedBox(height:5.h ,),

            //pecesCar
            CustomText(text:AllString.spaceType, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
            Container(
              margin: EdgeInsets.only(top: 10.h,bottom: 20.h),
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              height:48.h ,
              width: 260.w,
              decoration:const BoxDecoration(
                  boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                  borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
                  color: MyColors.white
              ),
              child: DropdownButton<int>(
                  icon: const Icon(Icons.arrow_drop_down_sharp ,color: Colors.black,size: 20,),
                  isExpanded: true,
                  underline:Container(color: Colors.transparent),
                  hint: CustomText(text:_idPeces==null? AllString.typeOfPeces :AllString.peceType[_idPeces!].name, fontSize: 14.sp, color: MyColors.gray2),
                  value: _idPeces ,
                  onChanged: (int? vlaue) {
                    _idPeces = vlaue;
                    print(AllString.peceType[_idPeces!].name);
                  },
                  items: AllString.peceType.map((CarColor) =>
                      DropdownMenuItem<int>(
                        child: Text(CarColor.name),
                        value: CarColor.id,
                      ))
                      .toList()),

            ),

            //vertion
           CustomText(text:AllString.vertion, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
           CustomTextFiled(AllString.vertion, _vertionController),
          SizedBox(height:25.h ,),

            //yearOfMackCar
            CustomText(text:AllString.yearMackCar, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
            CustomTextFiled(AllString.yearMackCar, _numberMackController),
            SizedBox(height:25.h ,),

            //vin number
            CustomText(text:AllString.vinNumber, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
            CustomTextFiled(AllString.vinNumber, _vinNumberController),
            SizedBox(height:25.h ,),

        
          //carNumber
          CustomText(text:AllString.carNumber, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
          CustomTextFiled(AllString.carNumber, _numberController),
          SizedBox(height:25.h ,),

          //carType
          CustomText(text:AllString.matiral, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
          CustomTextFiled(AllString.matiral, _matrialController),
          SizedBox(height:25.h ,),


          SizedBox(height:40.h ,),
          CustomButton(width: 350.w, buttonText: AllString.next ,clickButton: clickButton,)
    ])

    );
  }
  void clickButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> AddNewTecit2(
        numberIdSelected: AllString.peceType[_idPeces!].id ,
      text:AllString.peceType[_idPeces!].name
    )
    ));
  }

}

