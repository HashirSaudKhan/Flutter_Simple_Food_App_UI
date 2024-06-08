import 'package:figma_app/custom_buttons.dart';
import 'package:figma_app/home_screen/home_screen_one.dart';
import 'package:flutter/material.dart';

class Auth_Screen extends StatelessWidget {
  const Auth_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 40),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.60,
              color: const Color(0xffFFA451),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                  margin: const EdgeInsets.only(left: 230, top: 20),
                  child: Image.asset(
                      'assets/images/fruit-drops2-removebg-preview 1.png'),
                ),
                Image.asset('assets/images/basket2.png'),
                const SizedBox(height: 10),
                Image.asset('assets/images/Ellipse 2.png')
              ]),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 40, left: 25, right: 25, bottom: 70),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.40,
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      width: double.infinity,
                      //height: 80,
                      //color: Colors.amberAccent,
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "What is your firstname?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                fillColor: Color(0xffF7F5F5),
                                filled: true,
                                hintText: "Type here",
                                hintStyle: TextStyle(color: Color(0xffC2BDBD))),
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
                                  builder: (context) =>
                                      const Home_Screen_One()));
                        },
                        child: const Custom_Button(
                          btn_name: "Start Ordering",
                        ))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
