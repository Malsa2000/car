import 'package:car/const/my_color.dart';
import 'package:car/ui/account/aacount.dart';
import 'package:car/ui/account/profile.dart';
import 'package:car/ui/all_tecet_you_added.dart';
import 'package:car/ui/all_tecit.dart';
import 'package:car/ui/apply_request/apply_request.dart';
import 'package:car/ui/create_new_account/create_user_account.dart';
import 'package:car/ui/drawer_screens/change_password.dart';
import 'package:car/ui/drawer_screens/connect_us.dart';
import 'package:car/ui/drawer_screens/policy.dart';
import 'package:car/ui/drawer_screens/uses_condations.dart';
import 'package:car/ui/enter_code/enter_code.dart';
import 'package:car/ui/evaluate_user.dart';
import 'package:car/ui/home/bottom_navigation_button.dart';
import 'package:car/ui/home/home.dart';
import 'package:car/ui/item_repaly_24.dart';
import 'package:car/ui/login/forgit_password.dart';
import 'package:car/ui/login/login.dart';
import 'package:car/ui/my_card/month_get.dart';
import 'package:car/ui/on_bording/on_bording.dart';
import 'package:car/ui/replay/all_replay.dart';
import 'package:car/ui/setting.dart';
import 'package:car/ui/splash/lunch_screen.dart';
import 'package:car/ui/view_item/price_view.dart';
import 'package:car/ui/view_item/price_view2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 814),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            iconTheme:const IconThemeData(size: 20 ,color: MyColors.blue2),
            //scaffoldBackgroundColor: MyColors.white,
            appBarTheme:const AppBarTheme(
               backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,

            )
          ),
          debugShowCheckedModeBanner: false,
          home: OnBording(),
          routes: {
            "all_tecit_you_added" :(context)=>AllTecitYouAdded(),
            "all_tecit_add" :(context)=>AllTecit(),
            "policy" :(context)=>Policy(),
            "connect_us":(context)=>ConnectUs(),
            "user_condations":(context)=>UsesCondations(),
            "home":(context)=>BottomNavigationBarPage(),
            "all_replayes":(context)=>ALlReplay(),
            "on_bording":(context)=>OnBording(),
            "Create_user_account":(context)=>CreateUserAccount(),
            "enter_code":(context)=>EnterCode(),
            "applay_request":(context)=>ApplyRequest(),
            "item_replay24":(context)=>ItemReplay24(),
            "evaluat_uaer":(context)=>EvaluateUser(),
            "forgit_pass":(context)=>ForgetPassword(),
            "change_password":(context)=>ChangePassword(),
            "price_view2":(context)=>PriceView2(),
            "on_bording":(context)=>OnBording(),
            "price_view":(context)=>PriceView(),
            "setting" :(context)=>Setting(),
            "month_pay" :(context)=> MonthPay(),
            "account" :(context)=> Account(),
            "profile" :(context)=>  Profile(),


          },
        );
      },
    );
  }
}
