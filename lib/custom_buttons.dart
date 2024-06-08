// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Custom_Button extends StatelessWidget {
  final String btn_name;
  const Custom_Button({super.key, required this.btn_name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          color: const Color(0xffFFA451),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
          child: Text(
        btn_name,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Color(0xffFFFFFF)),
      )),
    );
  }
}
