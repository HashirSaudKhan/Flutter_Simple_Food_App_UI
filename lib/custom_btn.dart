import 'package:flutter/material.dart';

class CustomBtn2 extends StatelessWidget {
  final String txtbutton;
  final double btnwidth;
  const CustomBtn2(
      {super.key, required this.txtbutton, required this.btnwidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: btnwidth,
      height: 50,
      decoration: BoxDecoration(
          color: const Color(0xffFCF6F0),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Text(
        txtbutton,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color(0xffFFA451)),
      )),
    );
  }
}
