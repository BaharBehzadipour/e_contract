import 'package:flutter/material.dart';
import 'package:e_contract/Widgets/CustomInput.dart';

class SinIn extends StatefulWidget {
  const SinIn({Key? key}) : super(key: key);

  @override
  _SinInState createState() => _SinInState();
}

class _SinInState extends State<SinIn> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child:CustomInput(
          placeholder: 'شماره موبایل',
        icon: Icon(
            Icons.phone_android_rounded,
          size:40
        ),
        ) ,
      ),
    );
  }
}