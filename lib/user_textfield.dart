// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class UserTextField extends StatelessWidget {
  Icon prefixIcon;
  String labelText;
  String hintText;
  UserTextField({
    Key? key,
    required this.prefixIcon,
    required this.labelText,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0,right: 10.0),
      child: TextFormField(
        cursorColor: Colors.lightBlueAccent,
        style: const TextStyle(
          color: Colors.white
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 0,vertical: 0),
            prefixIcon: prefixIcon,
            labelText: labelText,
            labelStyle: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
            alignLabelWithHint: true,
            hintText: hintText,
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
