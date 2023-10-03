import 'package:car/const/my_color.dart';
import 'package:car/const/string.dart';
import 'package:car/ui/add_new_tecit/add__new_tecit.dart';
import 'package:car/ui/all_tecet_you_added.dart';
import 'package:car/ui/home/home.dart';
import 'package:car/ui/item_repaly_24.dart';
import 'package:car/ui/replay/all_replay.dart';
import 'package:car/ui/setting.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class BottomNavigationBarPage extends StatefulWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarPage> createState() => _BottomNavigationBarPageState();
}

class _BottomNavigationBarPageState extends State<BottomNavigationBarPage> {
  
  List<String> _routes = <String>[
    "all_tecit_add",
    "all_tecit_you_added",
    "item_replay24",
    "car1",
  ];

 
    final List<BnScreen> _screen = <BnScreen> [
     BnScreen(title: "الصفحة الرئيسية", widget: Home()),
     BnScreen(title: "القطع المتاحة لمدة24 ساعة", widget: ItemReplay24()),
     BnScreen(title: "", widget: AddNewTecit()),
     BnScreen(title: "كل التكت المضافة", widget: ALlReplay()),
     BnScreen(title: "اعدادات", widget: Setting()),

  ];
  int _currentPaeg = 0;
  late PageController _pageController;



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
    return Scaffold(
       bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Stack(
                alignment: FractionalOffset(.8.h, 1.0.h,),
                children: [

              BottomNavigationBar(
          backgroundColor: Colors.white,
              elevation: 3,
              onTap: (int cuttentPage) {
                setState(() => _currentPaeg = cuttentPage);
              },
              currentIndex: _currentPaeg,
                  selectedLabelStyle:TextStyle(fontWeight: FontWeight.w300,color: MyColors.blue2,fontSize: 14.sp) ,
                  unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w700,color: MyColors.blue1,fontSize: 14.sp),
              selectedIconTheme:const IconThemeData(color: MyColors.blue1),
                  unselectedItemColor: MyColors.blue2,
                  
              selectedItemColor: MyColors.black,
              unselectedIconTheme:const IconThemeData(color: MyColors.blue2),
              items:const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined,size: 20,),
                    activeIcon: Icon(Icons.home),
                    label: "الصفحة الرئيسية",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.all_inbox_outlined,size: 20,),
                    activeIcon: Icon(Icons.all_inbox),
                    label: "قطع متوافرة لمدة 24ساعة" ,
                  ),
                BottomNavigationBarItem(
                     label: "",
                    icon: Icon(Icons.favorite,color: MyColors.white),
                  ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.mark_chat_unread_sharp,size: 20,),
                    activeIcon: Icon(Icons.mark_chat_unread_sharp,),
                    label: "الرسائل",
                  ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings,size: 20,),
                  activeIcon: Icon(Icons.settings),
                    label: "الاعدادات",
               ),
              ]),

            Row(
              children:[ 
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 25.h,
                    left:_currentPaeg== 0 ||_currentPaeg== 1?  1 : 0,
                    right:_currentPaeg== 3 ||_currentPaeg== 4?  10 : 0,
                  ),
                  child:FloatingActionButton(
                    onPressed: (){clickButton();},
                    backgroundColor: MyColors.blue1,
                    child: Icon(Icons.add),
                  )

                ),
                Spacer(),
          ]),

         
        ],)

     ),
      appBar: AppBar(
        title: CustomText(text: _screen[_currentPaeg].title,
            fontSize: 18.sp, color: MyColors.blue2),
      actions: [
        IconButton(onPressed: (){}, icon:const Icon(Icons.notifications_none_sharp,
          color: MyColors.blue2,size: 20,)),
      ],
      ),
      body:_screen[_currentPaeg].widget
    );
  }
  void clickCatogres(String routs){
    Navigator.pushNamed(context, routs);
  }
  void clickButton(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTecit()));
  }
}
class BnScreen {
  String title;
  Widget widget;
  BnScreen({required this.title,required this.widget});
}