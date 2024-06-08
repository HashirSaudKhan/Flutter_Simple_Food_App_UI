import 'package:flutter/material.dart';

class Combo_Items extends StatelessWidget {
  final String txtName;
  final double widthRange;
  const Combo_Items(
      {super.key, required this.txtName, required this.widthRange});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            width: widthRange,
            height: 30,
            decoration: BoxDecoration(
                //color: Colors.pink[50],
                color: const Color(0xffFAFAFA),
                borderRadius: BorderRadius.circular(10)),
            child: Center(child: Text(txtName))),
        const SizedBox(
          width: 6,
        )
      ],
    );
  }
}
