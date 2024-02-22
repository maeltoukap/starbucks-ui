// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/controller/app_controller.dart';
import 'package:starbucks/widgets/custom_fade_in_down.dart';

class OrderButton extends StatelessWidget {
  OrderButton({
    super.key,
  });

  AppController appColotroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      delay: const Duration(milliseconds: 800),
      duration: const Duration(milliseconds: 500),
      from: 50,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Theme.of(context).primaryColor,
                      minimumSize: const Size(35, 35),
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      shape: const CircleBorder(),
                      elevation: 0),
                  onPressed: () {
                    if (appColotroller.quantity.value > 1) {
                      appColotroller.quantity.value--;
                    }
                  },
                  child: const Text('-', style: TextStyle(fontSize: 18)),
                ),
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Obx(() {
                    return Text(
                      appColotroller.quantity.value.toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    );
                  }),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Theme.of(context).primaryColor,
                      minimumSize: const Size(35, 35),
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      shape: const CircleBorder(),
                      elevation: 0),
                  onPressed: () {
                    appColotroller.quantity.value++;
                  },
                  child: const Text(
                    '+',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Theme.of(context).primaryColor,
                  minimumSize: const Size(180, 50),
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  elevation: 0),
              onPressed: () {
                Get.snackbar(
                  "Order",
                  "Order placed successfully!",
                  snackPosition: SnackPosition.TOP,
                  colorText: Colors.white,
                  borderRadius: 10,
                  backgroundColor: const Color(0xFF40966C),
                );
              },
              child: const Text('Add to Order', style: TextStyle(fontSize: 15)),
            ),
          ],
        ),
      ),
    );
  }
}
