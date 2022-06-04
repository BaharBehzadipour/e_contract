import 'package:flutter/material.dart';

class TextAndButton extends StatefulWidget {
  final String mainText;
  final String clickableText;
  final Widget onClick;
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
          onTap:(){
            Navigator.of(context).push(PageRouteBuilder(
                transitionDuration: Duration(seconds: 1),
                pageBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondAnimation) {
                  return widget.onClick;
                },
                transitionsBuilder: (BuildContext context,
                    Animation<double> animation,
                    Animation<double> secondAnimation,
                    Widget child) {
                  return SlideTransition(
                    child: child,
                    position:
                    Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))
                        .animate(CurvedAnimation(
                        parent: animation,
                        curve: Curves.fastOutSlowIn)),
                  );
                }));
            },
        ),
        Padding(
          padding: EdgeInsets.only(left: 7),
          child: Text(
              widget.mainText,
              style: TextStyle(
                color: Color.fromRGBO(162, 168, 183, 1),
                fontFamily: "IranYekan" ,
                fontSize: 15,

              ),
          ),
        )
      ],
    );
  }
}
