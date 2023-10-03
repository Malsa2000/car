import 'package:car/const/my_color.dart';
import 'package:car/ui/login/login.dart';
import 'package:car/ui/on_bording/on_bording.dart';
import 'package:car/ui/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}


class _LunchScreenState extends State<LunchScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, "on_bording");
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Image(image:AssetImage("images/car1.PNG"),
          ),
          CircularProgressIndicator(),

        ],
      ),
    );
  }
}
