import 'package:e_contract/Widgets/CustomBackground.dart';
import 'package:flutter/material.dart';
import 'package:e_contract/Widgets/CustomInput.dart';
import 'package:e_contract/Widgets/CustomButton.dart';
import 'package:e_contract/Widgets/CustomBackground.dart';

class SinIn extends StatefulWidget {
  const SinIn({Key? key}) : super(key: key);

  @override
  _SinInState createState() => _SinInState();
}

class _SinInState extends State<SinIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: CustomBackground(
          up: Container(),
          down: Container(),

        ),
        // child:CustomInput(
        //   placeholder: 'شماره موبایل',
        // icon: Icon(
        //     Icons.phone_android_rounded,
        //   size:40
        // ),
        // ) ,
        // child: Container(
        //   width: 310,
        //   child: CustomButton(
        //       textButton: "ارسال کد",
        //   ),
        // ),
      ),
    );
  }
}
