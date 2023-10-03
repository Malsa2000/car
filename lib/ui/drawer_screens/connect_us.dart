import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ConnectUs extends StatelessWidget {
   ConnectUs({Key? key}) : super(key: key);

  int? id ;
  TextEditingController _massageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:CustomText(text: AllString.callUs, fontSize: 18.sp, color: MyColors.blue2),),
         body: ListView(
           padding: EdgeInsets.symmetric(horizontal: 23.h,vertical: 10.h),
        children: [
          ListTile(leading:const Icon(Icons.call,color: MyColors.blue1,),
            style: ListTileStyle.drawer,
            shape:const Border(bottom: BorderSide(color: MyColors.blue2,width: 0.5)),
            title:CustomText(text:"رقم الهاتف", fontSize: 14.sp, color: MyColors.blue2,
              fontWeight: FontWeight.w700,),
            subtitle:CustomText(text:"اتصل مباشر", fontSize: 12.sp, color: MyColors.blue2),
            trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.phone_callback_sharp
              ,color: MyColors.blue1,)),
          ),
          ListTile(leading:const Icon(Icons.mail,color: MyColors.blue1,),
            style: ListTileStyle.drawer,
            title: CustomText(text:"أو تواصل معنا من خلال:", fontSize: 14.sp, color: MyColors.blue2,fontWeight: FontWeight.w600,),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.h,bottom: 20.h ,left: 15.w ,right: 15.w),
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            height:48.h ,
            width: 350.w,
            decoration:const BoxDecoration(
                boxShadow:const [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
                color: MyColors.white
            ),
            child: DropdownButton<int>(
                icon: const Icon(Icons.arrow_drop_down_sharp ,color: Colors.black,size: 20,),
                isExpanded: true,
                underline:Container(color: Colors.transparent),
                hint: CustomText(text: AllString.massageConectUs, fontSize: 14.sp, color: MyColors.gray2),
                value: id ,
                onChanged: (int? vlaue) {
                  id = vlaue;
                },
                items: AllString.connectUsList.map((CarColor) =>
                    DropdownMenuItem<int>(
                      child: Text(CarColor.name),
                      value: CarColor.id,
                    ))
                    .toList()),

          ),
          TextField(
            controller: _massageController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              filled: true,
              fillColor: MyColors.white,
              hintText:  id ==null ? "ارسل رسالة هنا" : AllString.connectUsList[id!].name,

              hintStyle: TextStyle(
                  color:MyColors.gray , fontSize: 14.sp ),
              constraints: BoxConstraints(
                  maxHeight: 48.h ,maxWidth: 350.w ,minWidth: 350.w),
              errorBorder:const OutlineInputBorder(
                borderSide:  BorderSide(color: Colors.red, width: 1.0),
              ),
              enabledBorder:const OutlineInputBorder(

                borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                borderSide: BorderSide(width: 0.5, color: Colors.transparent ,),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color:MyColors.blue2, width: 1.0),
              ),
            ),
            enabled: true,

          ),
          SizedBox(height: 20.h,),
          CustomButton(width: 350.w, buttonText: AllString.send, clickButton: (){}),

        ],
      ),
    );
  }
}
