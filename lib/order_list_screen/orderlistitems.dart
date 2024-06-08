import 'package:flutter/material.dart';

class OrderListItems extends StatelessWidget {
  final String itemName;
  final Image itemImage;
  const OrderListItems(
      {super.key, required this.itemName, required this.itemImage});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(bottom: 20),
        height: 70,
        //color: Colors.pink,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(right: 20),
              child: itemImage,
            ),
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemName,
                  style:
                      const TextStyle(color: Color(0xff333333), fontSize: 18),
                ),
                const Text(
                  "2packs",
                  style: TextStyle(color: Color(0xff000000), fontSize: 12),
                ),
                Row(
                  children: [
                    Image.asset('assets/images/BigN.png'),
                    const Text(
                      "20,000",
                      style: TextStyle(color: Color(0xff333333), fontSize: 18),
                    ),
                  ],
                )
              ],
            ),
            const Spacer(),
            const CircleAvatar(
              radius: 15,
              backgroundColor: Color(0xffFFF2E7),
              foregroundColor: Color(0xffFFA451),
              child: Icon(Icons.remove),
            ),
          ],
        ));
  }
}
