import 'package:flutter/material.dart';


class CustomBackground extends StatefulWidget {
  final Widget up;
  final Widget down;
  const CustomBackground({Key? key , required this.up , required this.down}) : super(key: key);

  @override
  State<CustomBackground> createState() => _CustomBackgroundState();
}

class _CustomBackgroundState extends State<CustomBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(31, 89, 218, 1),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/lineOfBackground.png"),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,
                )
              ),
              child: widget.up

          ) ,
          Container(
            height: MediaQuery.of(context).size.height * 0.60,
            width: MediaQuery.of(context).size.width,
            child: widget.down,

            decoration: BoxDecoration(
                color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50) ,
                  topLeft:Radius.circular(50)
              )
            ),


          )
        ],
      ),
    );
  }
}
