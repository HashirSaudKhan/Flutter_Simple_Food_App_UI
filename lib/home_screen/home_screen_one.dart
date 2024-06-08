import 'package:figma_app/add_to_basket/add_to_screen.dart';
import 'package:figma_app/home_screen/drawer/drawer.dart';
import 'package:figma_app/home_screen/hlc_bmc/honeylc-berrymc.dart';
import 'package:figma_app/home_screen/pos_list/pos_list.dart';
import 'package:flutter/material.dart';

class Home_Screen_One extends StatelessWidget {
  const Home_Screen_One({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: mydrawer()),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Column(
            children: [
              ListTile(
                leading: Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      child: Image.asset('assets/images/Group 4.png'),
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                ),
                title: const Text("Welcome, Chris."),
                trailing: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffB4B4C0),
                          blurRadius: 0.1,
                          offset: Offset(0.3, 0),
                        ),
                        BoxShadow(
                          color: Color(0xffB4B4C0),
                          blurRadius: 0.1,
                          offset: Offset(0, 0.5),
                        ),
                      ]),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Frame 56.png'),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                height: 50,
                width: 400,
                //width: double.infinity,
                //decoration: const BoxDecoration(color: Colors.pinkAccent),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: const Color(0xffF5F5F5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const TextField(
                        decoration: InputDecoration(
                            constraints: BoxConstraints(maxWidth: 300),
                            prefixIcon: Icon(
                              Icons.search,
                              color: Color(0xffB4B4C0),
                            ),
                            border: InputBorder.none,
                            hintText: "Search for fruit salad combos",
                            hintStyle: TextStyle(color: Color(0xffB4B4C0))),
                      ),
                    ),
                    Container(
                        width: 40,
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xffF5F5F5),
                            borderRadius: BorderRadius.circular(10)),
                        child: const ImageIcon(
                            AssetImage('assets/images/Group 6.png')))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                width: double.infinity,
                height: 50,
                color: const Color(0xffFAFAFA),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(width: 10),
                      Pos_List(
                        txtName: "ALL",
                        widthRange: 50,
                      ),
                      SizedBox(width: 10),
                      Pos_List(txtName: "Salad Combo", widthRange: 110),
                      SizedBox(width: 10),
                      Pos_List(txtName: "Berry Combo", widthRange: 110),
                      SizedBox(width: 10),
                      Pos_List(txtName: "Mango Berry", widthRange: 110)
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 20),
                //color: Colors.pink[50],
                width: double.infinity,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Recommended Combo",
                      style: TextStyle(fontSize: 19, color: Color(0xff27214D)),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 15, top: 5),
                      width: 60,
                      height: 2,
                      color: const Color(0xffFFA451),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //mainAxisSize: MainAxisSize.min,
                      children: [
                        HoneyLimeCombo_BerryMangoCombo(
                            txtName: "Honey lime combo",
                            txtrate: "2,000",
                            bgItemColor: const Color(0xffFFFFFF),
                            imageAssets: Image.asset(
                                'assets/images/Honey-Lime-Peach-Fruit-Salad-3-725x725-1-removebg-preview 1.png')),
                        HoneyLimeCombo_BerryMangoCombo(
                            txtName: "Berry mango combo",
                            txtrate: "2,000",
                            bgItemColor: const Color(0xffFFFFFF),
                            imageAssets: Image.asset(
                                'assets/images/Glowing-Berry-Fruit-Salad.png'))
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                //color: Colors.blue[50],
                width: double.infinity,
                height: 260,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Hottest",
                            style: TextStyle(
                                color: Color(0xff27214D), fontSize: 19),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Popular",
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 19),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "New Combo",
                            style: TextStyle(
                                color: Colors.grey[400], fontSize: 19),
                          )
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 15, top: 5),
                        width: 45,
                        height: 2,
                        color: const Color(0xffFFA451),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              child: HoneyLimeCombo_BerryMangoCombo(
                                  txtName: "Quinoa fruit salad",
                                  txtrate: "10,000",
                                  bgItemColor: const Color(0xffFFFCF2),
                                  imageAssets: Image.asset(
                                      'assets/images/Best-Ever-Tropical-Fruit-Salad (2).png')),
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AddToBasket()));
                              },
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            HoneyLimeCombo_BerryMangoCombo(
                                txtName: "Tropical fruit salad",
                                txtrate: "10,000",
                                bgItemColor: const Color(0xffFEF4F4),
                                imageAssets: Image.asset(
                                    'assets/images/Best-Ever-Tropical-Fruit-Salad (1).png')),
                            const SizedBox(
                              width: 5,
                            ),
                            HoneyLimeCombo_BerryMangoCombo(
                                txtName: "Melon fruit salad",
                                txtrate: "10,000",
                                bgItemColor: const Color(0xffF1EFF6),
                                imageAssets: Image.asset(
                                    'assets/images/Honey-Lime-Peach-Fruit-Salad-3-725x725-1-removebg-preview 1.png')),
                          ],
                        ),
                      )
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
