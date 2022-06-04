import 'dart:ui';
import 'package:e_contract/Widgets/CustomBackground.dart';
import 'package:flutter/material.dart';
import 'package:e_contract/Widgets/CustomInput.dart';
import 'package:e_contract/Widgets/CustomButton.dart';
import 'package:e_contract/Widgets/CustomBackground.dart';
import 'package:e_contract/Widgets/TextAndButton.dart';

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
          up: Container(
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 35,bottom: 15),
                    child: Text(
                      "ورود",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: "IranYekan" ,
                        fontSize: 28,
                        fontWeight:FontWeight.bold
                      ),
                    ),
                  ),
                  Text(
                      " لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است."
                  ,style: TextStyle(
                      color: Colors.white,
                      fontFamily: "IranYekan" ,
                      fontSize: 16,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
          ),
          down: Padding(
            padding: EdgeInsets.only(
              top: 70,
              right: 70,
              left: 70,
            ),
            child: Container(
              // color: Colors.purple,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomInput(
                    placeholder: 'شماره موبایل',
                  icon: Icon(
                      Icons.phone_android_rounded,
                    size:40
                  ),
                  ) ,
              Padding(
                padding: EdgeInsets.only(top: 150,bottom: 22),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(
                          textButton: "ارسال کد",
                      ),
                ),
              ),
                  TextAndButton(
                      mainText: "حساب کابری ندارید؟",
                      clickableText: "ثبت نام",
                  onClick: (){},
                  ),
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
