// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  String labelText;
  String hintText;
  PasswordTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool showPassword = false;
  Icon visOn = const Icon(
    Icons.visibility,
    color: Colors.white,
  );
  Icon visOff = const Icon(
    Icons.visibility_off,
    color: Colors.white,
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0,right: 10.0),
      child: TextFormField(
        cursorColor: Colors.lightBlueAccent,
        style: const TextStyle(
            color: Colors.white
        ),
        obscureText: showPassword,
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
            prefixIcon: const Icon(
              Icons.security,
              color: Colors.lightBlueAccent,
            ),
            labelText: widget.labelText,
            suffixIcon: IconButton(
              icon: showPassword ? visOff : visOn,
              onPressed: (){
                setState(() {
                  showPassword = !showPassword;
                });
              },
            ),
            labelStyle: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
            alignLabelWithHint: true,
            hintText: widget.hintText,
            hintStyle: const TextStyle(
              color: Colors.white,
            ),
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: Colors.lightBlueAccent
                )
            ),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    width: 2,
                    color: Colors.lightBlueAccent
                )
            )
        ),
      ),
    );
  }
}
