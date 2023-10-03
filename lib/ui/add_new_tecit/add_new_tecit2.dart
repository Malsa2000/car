import 'dart:io';
import 'package:car/model/car_color.dart';
import 'package:image_picker/image_picker.dart';
import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/view_item/view_tecit.dart';
import 'package:car/ui/widgets/custom_button.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:car/ui/widgets/custom_text_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddNewTecit2 extends StatefulWidget {
   AddNewTecit2({Key? key ,required this.numberIdSelected ,required this.text}) : super(key: key);
int? numberIdSelected ,oldOrNewId ,deliveryOrNoId;
String? text;

  @override
  State<AddNewTecit2> createState() => _AddNewTecit2State();
}

class _AddNewTecit2State extends State<AddNewTecit2> {
  late TextEditingController _nameOfRequerdPecies;
  late TextEditingController _descriptionOfRequerdPecies;
  late TextEditingController _note;
  int _number = 0;
  int? _idColor;

  @override
  void initState() {
    _nameOfRequerdPecies = TextEditingController();
    _descriptionOfRequerdPecies = TextEditingController();
    _note = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _nameOfRequerdPecies.dispose();
    _descriptionOfRequerdPecies.dispose();
    _note.dispose();
    super.dispose();
  }
  List<CarColor> choseItem(int id){
    if(id == 0){
      return AllString.betryList;
    }
    else if(id == 1){
      return AllString.coverBodyList;
    }
    else if(id == 2){
      return AllString.pecesUpdataList;
    }
    else if(id == 3){
      return AllString.pecesMecanicList;
    }
    else{
      return [];
    }
  }


  final imagePicker = ImagePicker();
  List<File> paths = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: CustomText(
        text: AllString.addNewTecet,
        fontSize: 20.sp,
        color: MyColors.blue2,
        fontWeight: FontWeight.w600,
      )),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        children: [


              //pesiceType
              CustomText(text:widget.text! == null ? "":widget.text!, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
              Container(
                margin: EdgeInsets.only(bottom: 25.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                height:48.h ,
                width: 260.w,
                decoration:const BoxDecoration(
                    boxShadow: [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                    borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
                    color: MyColors.white
                ),
                child: DropdownButton<int>(
                    icon: const Icon(Icons.arrow_drop_down_sharp ,color: Colors.black,size: 20,),
                    isExpanded: true,
                    underline:Container(color: Colors.transparent),
                    hint: CustomText(text: widget.text! == null ? "":widget.text!, fontSize: 14.sp, color: MyColors.gray2),
                    value: _idColor ,
                    onChanged: (int? vlaue) {
                      _idColor = vlaue;
                    },
                    items: choseItem(widget.numberIdSelected!)== null ? []:choseItem(widget.numberIdSelected!).map((Color) =>
                        DropdownMenuItem<int>(
                          child: Text(Color.name),
                          value: Color.id,
                        ))
                        .toList()),

              ),

              CustomText(
                text: AllString.nameRequreaPecies,
                fontSize: 14.sp,
                color: MyColors.black,
                fontWeight: FontWeight.w600,
              ),
              CustomTextFiled(
                  AllString.nameRequreaPecies, _nameOfRequerdPecies),
              SizedBox(
                height: 25.h,
              ),

              //nameOfRequerdPecies
              CustomText(
                text: AllString.descriptionRequreaPecies,
                fontSize: 14.sp,
                color: MyColors.black,
                fontWeight: FontWeight.w600,
              ),
              CustomTextFiled(AllString.descriptionRequreaPecies,
                  _descriptionOfRequerdPecies),
              SizedBox(
                height: 25.h,
              ),

              //quintyRequred
              CustomText(
                text: AllString.quanityRequerd,
                fontSize: 14.sp,
                color: MyColors.black,
                fontWeight: FontWeight.w600,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CustomButton(
                        width: 120.w, buttonText: "+", clickButton: incrimat),
                  ),
                  CustomText(
                    text: _number.toString(),
                    fontSize: 17.sp,
                    color: MyColors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  Expanded(
                    child: CustomButton(
                        width: 120.w, buttonText: "-", clickButton: decrimat),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),

              //oldOrNewId
              CustomText(text:AllString.typeOfPecies, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
              Container(
                margin: EdgeInsets.only(bottom: 25.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                height:48.h ,
                width: 260.w,
                decoration:const BoxDecoration(
                    boxShadow: [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                    borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
                    color: MyColors.white
                ),
                child: DropdownButton<int>(
                    icon: const Icon(Icons.arrow_drop_down_sharp ,color: Colors.black,size: 20,),
                    isExpanded: true,
                    underline:Container(color: Colors.transparent),
                    hint: CustomText(text:AllString.typeOfPecies, fontSize: 14.sp, color: MyColors.gray2),
                    value: widget.oldOrNewId ,
                    onChanged: (int? vlaue) {
                      widget.oldOrNewId  = vlaue;
                    },
                    items: AllString.typeOfPeciesList.map((Color) =>
                        DropdownMenuItem<int>(
                          child: Text(Color.name),
                          value: Color.id,
                        ))
                        .toList()),

              ),

              //haveDelivery
              CustomText(text:AllString.haveDelivery, fontSize: 14.sp, color: MyColors.black,fontWeight: FontWeight.w600,),
              Container(
                margin: EdgeInsets.only(bottom: 25.h),
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                height:48.h ,
                width: 260.w,
                decoration:const BoxDecoration(
                    boxShadow: [BoxShadow(color: Color(0xFFf0eee4), offset: Offset(-4, 4), blurRadius: 4)],
                    borderRadius: BorderRadius.all(Radius.elliptical(15, 15)),
                    color: MyColors.white
                ),
                child: DropdownButton<int>(
                    icon: const Icon(Icons.arrow_drop_down_sharp ,color: Colors.black,size: 20,),
                    isExpanded: true,
                    underline:Container(color: Colors.transparent),
                    hint: CustomText(text:AllString.haveDelivery, fontSize: 14.sp, color: MyColors.gray2),
                    value:  widget.deliveryOrNoId  ,
                    onChanged: (int? vlaue) {
                      widget.deliveryOrNoId  = vlaue;
                    },
                    items: AllString.haveDeliveryList.map((Color) =>
                        DropdownMenuItem<int>(
                          child: Text(Color.name),
                          value: Color.id,
                        ))
                        .toList()),

              ),

              //note
              CustomText(
                text: AllString.note,
                fontSize: 14.sp,
                color: MyColors.black,
                fontWeight: FontWeight.w600,
              ),
              CustomTextFiled(AllString.note, _note),


              //uplodeImages
              Wrap(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
                    alignment: Alignment.center,
                    height: 70.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      border: Border.all(color: MyColors.black, width: 0.3),
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    ),
                    child: IconButton(
                        onPressed: () {
                          getImage();
                        },
                        icon: Icon(
                          Icons.add,
                          size: 30.h,
                        )),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: 150.h,
                        minWidth: 350.w,
                        maxWidth: 350.w,
                        maxHeight: 150.h),
                    child: GridView.builder(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.w, vertical: 16.h),
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: paths.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.h,
                        mainAxisSpacing: 10.h,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                            margin: EdgeInsets.only(bottom: 20.h),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.r))),
                            child: //Text('islam')
                          CircleAvatar(
                                radius: 50.r,
                                backgroundImage: FileImage(paths[index])));
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              CustomButton(
                  width: 250.w,
                  buttonText: AllString.save,
                  clickButton: showDailalog)
            ],
          )
    );
  }

  void clickButton() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ViewTecit()));
  }
  void incrimat() {
    setState(() {
      _number++;
    });
  }
  void decrimat() {
    setState(() {
      if (_number > 0) {
        _number--;
      }
    });
  }


  File? file;
  Future<void> getImage() async {
    XFile? pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {

      setState(()=>file = File(pickedImage.path));
      // file = File(pickedImage.path);
      paths.add(file!);
    }
    print(" malsa  FileName is : ${paths.toString()}");
  }


  Future showDailalog() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              clipBehavior: Clip.antiAlias,
              backgroundColor: Colors.transparent,
              content: Stack(
                children: [
                Container(
                  height: 260.h,
                  margin: EdgeInsets.only(top:30.h),
                  padding: EdgeInsets.only(top:100.h,left: 20.w,right: 20.w),
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      )),
                  child: Column(
                    children: [
                      CustomText(
                        text: AllString.price3,
                        fontSize: 18.sp,
                        color: MyColors.black,
                        fontWeight: FontWeight.w600,
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomButton(
                          width: 200.w,
                          buttonText: AllString.view,
                          clickButton: clickButton),
                      SizedBox(
                        height: 20.h,
                      ),

                    ],
                  )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 100.h),
                  child: CircleAvatar(backgroundColor: MyColors.white,
                    backgroundImage: AssetImage("images/true.png"),
                    radius: 50.r,),
                )
              ],)

        )
    );
  }
}
