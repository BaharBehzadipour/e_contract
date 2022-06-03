import 'package:flutter/material.dart';
import 'package:e_contract/SinIn.dart';

void main()=>runApp(MainMaterial());

class MainMaterial extends StatelessWidget {
  const MainMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: CustomCalendar(),
        home:SinIn()
      // home:Profile()
      // home:Patogh()
    );
  }
}
