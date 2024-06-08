import 'package:figma_app/home_screen/home_screen_one.dart';
import 'package:flutter/material.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          width: 90,
          height: 35,
          decoration: const BoxDecoration(
              color: Color(0xffFFFFFF),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20), right: Radius.circular(20))),
          child: const Row(
            children: [Icon(Icons.arrow_back_ios_new_rounded), Text("Go back")],
          )),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const Home_Screen_One()));
      },
    );
  }
}
