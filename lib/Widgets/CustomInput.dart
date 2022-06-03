import 'package:flutter/material.dart';

class CustomInput extends StatefulWidget {
  final String placeholder;
  final Widget icon;
  const CustomInput({Key? key, required this.placeholder
    , required this.icon}) : super(key: key);

  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  var usernameController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 390,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: TextField(
            style: const TextStyle(
              color: Colors.black,
            ),
            cursorColor: const Color.fromRGBO(31, 89, 218, 1),
            textAlign: TextAlign.right,
            decoration: InputDecoration(
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(31, 89, 218, 1),
                        width: 1.5,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromRGBO(31, 89, 218, 1),
                        width: 1.5,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                prefixIcon: widget.icon,
                hintStyle: const TextStyle(
                  color: Color.fromRGBO(162, 168, 183, 1),
                  fontSize: 18,
                  fontFamily: "Iranyekan"
                ),
                hintText: widget.placeholder
            ),

          ),
        ),

    );
  }
}
