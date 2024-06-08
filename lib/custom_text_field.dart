import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String txtHint;
  final double rangewidth;
  const CustomTextField(
      {super.key, required this.txtHint, required this.rangewidth});

  @override
  Widget build(context) {
    return Container(
      width: rangewidth,
      padding: const EdgeInsets.only(left: 10),
      decoration: const BoxDecoration(
          color: Color(0xffF7F5F5),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: txtHint,
            hintStyle: const TextStyle(color: Color(0xffC2BDBD))),
      ),
    );
  }
}
