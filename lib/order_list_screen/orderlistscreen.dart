import 'package:figma_app/backbutton.dart';
import 'package:figma_app/custom_buttons.dart';
import 'package:figma_app/order_complete_screen/order_comp_screen.dart';
import 'package:figma_app/order_list_screen/orderlistitems.dart';
import 'package:flutter/material.dart';

class OrderListScreen extends StatelessWidget {
  const OrderListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          padding: const EdgeInsets.only(left: 20, top: 20),
          height: MediaQuery.of(context).size.height * 0.15,
          width: double.infinity,
          color: const Color(0xffFFA451),
          child: const Row(
            children: [
              MyBackButton(),
              SizedBox(
                width: 32,
              ),
              Text(
                "My Basket",
                style: TextStyle(
                    color: Color(0xffFFFFFF),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.70,
          //color: Colors.deepOrange[100],
          child: ListView(
            children: [
              OrderListItems(
                itemName: "Quinoa fruit salad",
                itemImage: Image.asset('assets/images/Frame 11903.png'),
              ),
              OrderListItems(
                itemName: "Melon fruit salad",
                itemImage: Image.asset('assets/images/Frame 11903 (1).png'),
              ),
              OrderListItems(
                itemName: "Tropical fruit salad",
                itemImage: Image.asset('assets/images/Frame 11903 (2).png'),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.15,
          //color: Colors.deepPurple[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total",
                    style: TextStyle(color: Color(0xff333333)),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/BigN.png'),
                      const Text(
                        "60,000",
                        style:
                            TextStyle(color: Color(0xff27214D), fontSize: 20),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                  width: 230,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const OrderCompleteScreen()));
                    },
                    child: const Custom_Button(btn_name: "Checkout"),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
