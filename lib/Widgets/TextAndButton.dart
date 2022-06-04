import 'package:flutter/material.dart';

class TextAndButton extends StatefulWidget {
  final String mainText;
  final String clickableText;
  final Function onClick;
  const TextAndButton({Key? key,required this.mainText
  ,required this.clickableText, required this.onClick}) : super(key: key);

  @override
  _TextAndButtonState createState() => _TextAndButtonState();
}

class _TextAndButtonState extends State<TextAndButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          child: Text(
            widget.clickableText,
            style: TextStyle(
              color:  Color.fromRGBO(31, 89, 218, 1),
              fontFamily: "IranYekan" ,
              fontSize: 15,
            ),
          ),
          onTap:(){ widget.onClick;},
        ),
        Text(
            widget.mainText,
            style: TextStyle(
              color: Color.fromRGBO(162, 168, 183, 1),
              fontFamily: "IranYekan" ,
              fontSize: 15,

            ),
        )
      ],
    );
  }
}
