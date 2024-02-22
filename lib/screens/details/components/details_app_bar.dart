// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/controller/app_controller.dart';
import 'package:starbucks/gen/assets.gen.dart';

class DetailsAppBar extends StatelessWidget {
  DetailsAppBar({
    super.key,
  });
  AppController appColotroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            Navigator.pop(context);
            appColotroller.reset();
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
        const Text(
          "Details",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Image.asset(
          Assets.images.basket.path,
          width: 28,
        )
      ],
    );
  }
}
