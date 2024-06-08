import 'package:figma_app/Authentication_screen.dart';
import 'package:figma_app/custom_buttons.dart';
import 'package:flutter/material.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 40),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.60,
            color: const Color(0xffFFA451),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                margin: const EdgeInsets.only(left: 230, top: 20),
                child: Image.asset(
                    'assets/images/fruit-drops2-removebg-preview 1.png'),
              ),
              Image.asset('assets/images/fruits_bucket1.png'),
              const SizedBox(height: 10),
              Image.asset('assets/images/Ellipse 1.png')
            ]),
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 40, left: 25, right: 25, bottom: 70),
            width: MediaQuery.of(context).size.width,
            height: 293.5,
            color: Colors.white,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: double.infinity,
                height: 80,
                //color: Colors.amberAccent,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get The Freshest Fruit Salad Combo",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "We deliver the best and freshest fruit salad in town. Order for a combo today!!!",
                      style: TextStyle(fontSize: 16, color: Color(0xff5D577E)),
                    )
                  ],
                ),
              ),
              const Spacer(),
              //button
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Auth_Screen()));
                  },
                  child: const Custom_Button(
                    btn_name: "Let's Continue",
                  ))
            ]),
          ),
        ],
      )),
    );
  }
}
