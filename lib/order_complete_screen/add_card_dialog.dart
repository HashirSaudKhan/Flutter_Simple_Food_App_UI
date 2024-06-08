import 'package:figma_app/custom_buttons.dart';
import 'package:figma_app/custom_text_field.dart';
import 'package:figma_app/order_list_last_screen/orderlistlastscreen.dart';
import 'package:flutter/material.dart';

class AddCardDialog extends StatelessWidget {
  const AddCardDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Dialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero,
      ),
      child: Container(
        color: Colors.white,
        height: 422,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Close button
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.red,
                        ))
                  ],
                ),
                const Text(
                  "Card holder’s name",
                  style: TextStyle(fontSize: 16),
                ),
                const CustomTextField(
                  txtHint: "10th avenue, Lekki, Lagos.",
                  rangewidth: double.infinity,
                ),
                const Text(
                  "Card number",
                  style: TextStyle(fontSize: 16),
                ),
                const CustomTextField(
                    rangewidth: double.infinity, txtHint: "09090909090"),
                const Row(
                  children: [
                    Text("Date"),
                    SizedBox(
                      width: 135,
                    ),
                    Text("CVV")
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTextField(txtHint: "MM/YY", rangewidth: 130),
                    CustomTextField(txtHint: "MM/YY", rangewidth: 130)
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Center(
                  child: SizedBox(
                      width: 213,
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const OrderLastListScreen()));
                          },
                          child:
                              const Custom_Button(btn_name: "Complete order"))),
                )
              ]),
        ),
      ),
    ));
  }
}
