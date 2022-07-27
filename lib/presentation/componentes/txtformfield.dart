import 'dart:html';

import 'package:flutter/material.dart';

class DefaultCardFormField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final IconData? icon2;
  final double width;
  final TextEditingController textEditingController;
  const DefaultCardFormField(
      {this.width = double.infinity,
      required this.hintText,
      Key? key,
      this.icon,
      this.icon2,
      required this.textEditingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin: const EdgeInsets.all(10),
        elevation: 4,
        child: TextFormField(
          controller: textEditingController,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            suffix: Icon(icon),
            labelStyle: TextStyle(color: Colors.black),
            hintText: hintText,
            suffixIconColor: Colors.black,
            iconColor: Colors.black,
            suffixIcon: Icon(icon),
            hintStyle: TextStyle(color: Colors.black),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
