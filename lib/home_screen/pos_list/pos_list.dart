import 'package:flutter/material.dart';

class Pos_List extends StatelessWidget {
  final String txtName;
  final double widthRange;
  const Pos_List({super.key, required this.txtName, required this.widthRange});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: widthRange,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color(0xffB4B4C0),
              blurRadius: 0.1,
              offset: Offset(-0.3, 0),
            ),
          ]),
      child: Center(child: Text(txtName)),
    );
  }
}
