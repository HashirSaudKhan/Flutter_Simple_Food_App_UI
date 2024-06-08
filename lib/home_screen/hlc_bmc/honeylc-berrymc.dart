import 'package:flutter/material.dart';

class HoneyLimeCombo_BerryMangoCombo extends StatelessWidget {
  final String txtName;
  final String txtrate;
  final Image imageAssets;
  final Color bgItemColor;
  const HoneyLimeCombo_BerryMangoCombo(
      {super.key,
      required this.txtName,
      required this.imageAssets,
      required this.txtrate,
      required this.bgItemColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 200,
      decoration: BoxDecoration(
          color: bgItemColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
                color: Color(0xffFAFAFA),
                blurRadius: 20,
                spreadRadius: 10,
                offset: Offset(4, 4))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              SizedBox(
                  height: 100,
                  width: 120,
                  //color: Colors.pink[50],
                  child: imageAssets),
              SizedBox(
                height: 40,
                width: 20,
                //color: Colors.pink[200],
                child: Image.asset('assets/images/Vector.png'),
              ),
            ],
          ),
          Text(
            txtName,
            style: const TextStyle(fontSize: 15),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(children: [
                Image.asset('assets/images/N.png'),
                Text(
                  txtrate,
                  style: const TextStyle(
                    color: Color(0xffF08626),
                  ),
                )
              ]),
              const CircleAvatar(
                radius: 15,
                backgroundColor: Color(0xffFFF2E7),
                foregroundColor: Color(0xffFFA451),
                child: Icon(Icons.add),
              )
            ],
          )
        ],
      ),
    );
  }
}
