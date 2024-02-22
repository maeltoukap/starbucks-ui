// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:starbucks/controller/app_controller.dart';
import 'package:starbucks/ressources/data.dart';
import 'package:starbucks/screens/details/details_screen.dart';
import 'package:starbucks/screens/home/components/categories_widget.dart';
import 'package:starbucks/screens/home/components/home_app_bar.dart';
import 'package:starbucks/widgets/product_image.dart';
import 'package:starbucks/widgets/top_oval_clipper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final PageController _textSlideController = PageController();
  final PageController _imageSlideController = PageController(
    viewportFraction: 0.52,
  );
  AppController appColotroller = Get.put(AppController(), permanent: true);

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 300), () {
      _imageSlideController.animateToPage(1,
          duration: const Duration(milliseconds: 400), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    _imageSlideController.dispose();
    _textSlideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(), // Appbar Widget
            Padding(
              padding: const EdgeInsets.only(left: 35, bottom: 1, top: 10),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: const Text(
                  "Smooth Out Your Everyday",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: ClipPath(
                clipper: OvalContainer(),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Stack(
                    children: [
                      const CategoriesWidget(), // List of category
                      Positioned(
                        top: 125,
                        bottom: 0,
                        child: ClipPath(
                            clipper: OvalContainer(),
                            child: Container(
                              color: const Color(0xFF3F9369),
                              width: MediaQuery.of(context).size.width,
                            )),
                      ),
                      Positioned(
                        top: 130,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: AnimatedBuilder(
                            animation: _imageSlideController,
                            builder: (context, child) {
                              return PageView.builder(
                                itemCount: products.length,
                                controller: _imageSlideController,
                                onPageChanged: (page) {
                                  _textSlideController.animateToPage(page,
                                      duration:
                                          const Duration(milliseconds: 300),
                                      curve: Curves.linear);
                                },
                                itemBuilder: (context, index) {
                                  double value = 0.0;

                                  if (_imageSlideController
                                      .position.haveDimensions) {
                                    value = index.toDouble() -
                                        (_imageSlideController.page ?? 0);
                                    value = (value * 0.7).clamp(-1, 1);
                                  }

                                  return Align(
                                    alignment: Alignment.topCenter,
                                    child: Transform.translate(
                                      offset:
                                          Offset(0, 50 + (value.abs() * 200)),
                                      child: Transform.scale(
                                        scale: 1 - (value.abs() * 0.05),
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DetailsScreen(
                                                        product:
                                                            products[index],
                                                      )),
                                            );
                                          },
                                          child: Hero(
                                            tag: products[index].name,
                                            child: SizedBox(
                                              child: ProductImage(
                                                product: products[index],
                                                bgColor: const Color(0xFF47A878),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            }),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 100,
                        right: 100,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                              child: PageView.builder(
                                itemCount: products.length,
                                controller: _textSlideController,
                                scrollDirection: Axis.vertical,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        products[index].name,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            height: 1.1,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        "\$${products[index % products.length].price.toStringAsFixed(2)}",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                            SmoothPageIndicator(
                              controller: _imageSlideController,
                              count: products.length,
                              effect: ScrollingDotsEffect(
                                  spacing: 15.0,
                                  radius: 8.0,
                                  fixedCenter: true,
                                  dotWidth: 6.0,
                                  dotHeight: 6.0,
                                  activeDotScale: 3,
                                  dotColor:
                                      const Color(0xFFcfc18c).withOpacity(0.5),
                                  activeDotColor: const Color(0xFFcfc18c)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
