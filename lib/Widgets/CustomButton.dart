import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String textButton;
  const CustomButton({Key? key , required this.textButton}) : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){},
        child: Text(
            widget.textButton,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Iranyekan",
            fontSize: 16.5
          ),

        ) ,
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(31, 89, 218, 1)),
      shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),

      ))
    ),

    );
  }
}

