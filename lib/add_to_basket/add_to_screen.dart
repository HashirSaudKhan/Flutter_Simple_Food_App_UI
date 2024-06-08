import 'package:figma_app/add_to_basket/combo_items/combo_items.dart';
import 'package:figma_app/backbutton.dart';
import 'package:figma_app/custom_buttons.dart';
import 'package:figma_app/order_list_screen/orderlistscreen.dart';
import 'package:flutter/material.dart';

class AddToBasket extends StatelessWidget {
  const AddToBasket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xffFFA451),
          ),
          Positioned(
            bottom: 520,
            child: Image.asset(
                'assets/images/breakfast-quinoa-and-red-fruit-salad.png'),
          ),
          const Positioned(
              bottom: 720,
              left: 20,
              //Cutomize back button
              child: MyBackButton()),
          // 2nd Container
          Container(
              width: double.infinity,
              height: 480,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Quinoa Fruit Salad",
                      style: TextStyle(fontSize: 25),
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffFFF2E7),
                          foregroundColor: Color(0xffFFA451),
                          child: Icon(Icons.remove),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "1",
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xffFFF2E7),
                          foregroundColor: Color(0xffFFA451),
                          child: Icon(Icons.add),
                        ),
                        const Spacer(),
                        Image.asset(
                          'assets/images/N.png',
                          color: Colors.black,
                        ),
                        const Text(
                          "2,000",
                          style: TextStyle(fontSize: 23),
                        )
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: const Color(0xffF3F3F3),
                    ),
                    const Text(
                      "This combo contains:",
                      style: TextStyle(fontSize: 18),
                    ),
                    Container(
                      width: 60,
                      height: 2,
                      color: const Color(0xffFFA451),
                    ),
                    const Row(
                      children: [
                        //Customize constructor
                        Combo_Items(txtName: "Red Quinoa", widthRange: 90),
                        Combo_Items(txtName: "Lime", widthRange: 50),
                        Combo_Items(txtName: "Honey", widthRange: 60),
                        Combo_Items(txtName: "Blueberries", widthRange: 90)
                      ],
                    ),
                    const Row(
                      children: [
                        //Customize constructor
                        Combo_Items(txtName: "Mango", widthRange: 60),
                        Combo_Items(txtName: "Strawberries", widthRange: 90),
                        Combo_Items(txtName: "Fresh Mint", widthRange: 90)
                      ],
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: const Color(0xffF3F3F3),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: 340,
                      height: 50,
                      //color: Colors.amberAccent,
                      child: const Text(
                        "If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make",
                        style: TextStyle(color: Color(0xff333333)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          radius: 24,
                          backgroundImage:
                              AssetImage('assets/images/Group 27.png'),
                        ),
                        SizedBox(
                            width: 250,
                            child: InkWell(
                              child: const Custom_Button(
                                  btn_name: "Add To Basket"),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const OrderListScreen(),
                                    ));
                              },
                            ))
                      ],
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
