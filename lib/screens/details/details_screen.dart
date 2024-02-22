// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:starbucks/controller/app_controller.dart';
import 'package:starbucks/gen/assets.gen.dart';
import 'package:starbucks/model/product.dart';
import 'package:starbucks/ressources/data.dart';
import 'package:starbucks/screens/details/components/details_app_bar.dart';
import 'package:starbucks/screens/details/components/order_button.dart';
import 'package:starbucks/screens/details/components/product_size.dart';
import 'package:starbucks/widgets/custom_fade_in_down.dart';
import 'package:starbucks/widgets/product_image.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  AppController appColotroller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        onWillPop: () async {
          appColotroller.reset();
          return true;
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(0.0), // 12
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
                  child: DetailsAppBar(),
                ),
                const SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Positioned(
                      right: 0.0,
                      bottom: 0.0,
                      child: RotatedBox(
                          quarterTurns: 90,
                          child: Image.asset(Assets.images.coffeeSeed.path)),
                    ),
                    SizedBox(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Hero(
                            tag: product.name,
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.6,
                              height: MediaQuery.of(context).size.height * 0.49,
                              child: ProductImage(
                                product: product,
                                hasBorder: true,
                                bgColor: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      CustomFadeInDown(
                        delay: const Duration(milliseconds: 200),
                        duration: const Duration(milliseconds: 500),
                        from: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width /
                                  2.2, //*0.6
                              child: Text(
                                product.name,
                                style: const TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$${product.price.toStringAsFixed(2)}",
                                  style: TextStyle(
                                      fontSize: 32,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "Best Sale",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomFadeInDown(
                        delay: const Duration(milliseconds: 400),
                        duration: const Duration(milliseconds: 500),
                        from: 50,
                        child: const Text(
                          "Size Options",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 22,
                      ),
                      CustomFadeInDown(
                        delay: const Duration(milliseconds: 600),
                        duration: const Duration(milliseconds: 500),
                        from: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var i = 0; i < sizes.length; i++)
                                GestureDetector(
                                  onTap: () => appColotroller.selectedSize(i),
                                  child: Obx(() {
                                    return ProductSize(
                                        isSelected:
                                            appColotroller.selectedSize.value ==
                                                i,
                                        iconSize: 25 + (i * 5),
                                        sizes: sizes[i]);
                                  }),
                                ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: OrderButton(),
    );
  }
}
