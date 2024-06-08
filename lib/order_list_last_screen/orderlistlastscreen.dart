import "package:dotted_line/dotted_line.dart";
import "package:figma_app/backbutton.dart";
import "package:flutter/material.dart";

class OrderLastListScreen extends StatelessWidget {
  const OrderLastListScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
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
                  "Delivery Status",
                  style: TextStyle(
                      color: Color(0xffFFFFFF),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(top: 40),
            height: MediaQuery.of(context).size.height * 0.85,
            //color: Colors.deepPurple[50],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ListTile(
                  leading:
                      Image(image: AssetImage('assets/images/Frame 11915.png')),
                  title: Text("Order Taken"),
                  trailing: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 35,
                  ),
                ),
                //Dotted Line
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: 70,
                  height: 60,
                  child: const Center(
                    child: DottedLine(
                      alignment: WrapAlignment.center,
                      lineThickness: 2,
                      lineLength: 60,
                      direction: Axis.vertical,
                      dashColor: Color(0xffFFA451),
                    ),
                  ),
                ),
                const ListTile(
                  leading:
                      Image(image: AssetImage('assets/images/Frame 11918.png')),
                  title: Text("Order is being processed"),
                  trailing: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 35,
                  ),
                ),
                //Dotted Line
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: 70,
                  height: 60,
                  child: const Center(
                    child: DottedLine(
                      alignment: WrapAlignment.center,
                      lineThickness: 2,
                      lineLength: 60,
                      direction: Axis.vertical,
                      dashColor: Color(0xffFFA451),
                    ),
                  ),
                ),
                ListTile(
                    leading: const Image(
                        image: AssetImage('assets/images/Frame 11917.png')),
                    title: const Text("Order is being delivered"),
                    subtitle: Text(
                      "Your meal is on it’s way!!",
                      style: TextStyle(color: Colors.grey[450]),
                    ),
                    trailing: const Image(
                        image: AssetImage('assets/images/Group 50.png'))),
                //Dotted Line
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: 70,
                  height: 60,
                  child: const Center(
                    child: DottedLine(
                      alignment: WrapAlignment.center,
                      lineThickness: 2,
                      lineLength: 60,
                      direction: Axis.vertical,
                      dashColor: Color(0xffFFA451),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Image.asset('assets/images/map.png'),
                ),
                //Dotted Line
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  width: 70,
                  height: 60,
                  child: const Center(
                    child: DottedLine(
                      alignment: WrapAlignment.center,
                      lineThickness: 2,
                      lineLength: 60,
                      direction: Axis.vertical,
                      dashColor: Color(0xffFFA451),
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 55,
                  ),
                  title: Text("Order Recieved"),
                  trailing: Icon(
                    Icons.more_horiz_rounded,
                    color: Color(0xffFFE3C9),
                    size: 60,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
