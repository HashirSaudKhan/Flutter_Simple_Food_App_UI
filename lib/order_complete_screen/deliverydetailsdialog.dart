import 'package:figma_app/custom_btn.dart';
import 'package:figma_app/custom_text_field.dart';
import 'package:figma_app/order_complete_screen/add_card_dialog.dart';
import 'package:figma_app/order_list_last_screen/orderlistlastscreen.dart';
import 'package:flutter/material.dart';

class DeliveryDetailsDialog extends StatelessWidget {
  const DeliveryDetailsDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 360,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.close,
                    color: Colors.red,
                  ),
                )
              ],
            ),
            const Text("Your delivery address"),
            const CustomTextField(
                txtHint: "10th avenue, Lekki, Lagos.",
                rangewidth: double.infinity),
            const Text("Number we can call"),
            const CustomTextField(
                txtHint: "09090909090", rangewidth: double.infinity),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const OrderLastListScreen()));
                    },
                    child: const CustomBtn2(
                        txtbutton: "Pay on delivery", btnwidth: 130)),
                InkWell(
                    onTap: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) => const AddCardDialog());
                    },
                    child: const CustomBtn2(
                        txtbutton: "Pay with Card", btnwidth: 130))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
