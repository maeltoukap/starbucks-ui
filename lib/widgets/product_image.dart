// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:starbucks/model/product.dart';

class ProductImage extends StatelessWidget {
  final Product product;
  final Color bgColor;
  bool hasBorder;
  ProductImage({
    Key? key,
    required this.product,
    required this.bgColor,
    this.hasBorder = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrain) {
        return SizedBox(
          height: constrain.maxWidth * 1.25,
          width: constrain.maxWidth,
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Material(
                elevation: 20.0,
                shape: const CircleBorder(),
                // borderOnForeground: true,
                child: Container(
                  width: constrain.maxWidth * 0.9,
                  height: constrain.maxWidth * 0.9,
                  decoration: BoxDecoration(
                      color: bgColor,
                      shape: BoxShape.circle,
                      border: hasBorder
                          ? Border.all(color: Colors.white, width: 1)
                          : null),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(constrain.maxWidth * 0.45)),
                child: SizedBox(
                  width: constrain.maxWidth * 0.9,
                  height: constrain.maxWidth * 1.4,
                  child: Stack(
                    alignment: AlignmentDirectional.bottomCenter,
                    children: [
                      Positioned(
                          bottom: -60,
                          width: constrain.maxWidth * 0.9,
                          height: constrain.maxWidth * 1.4,
                          child: Image.asset(
                            product.image,
                            fit: BoxFit.contain,
                          )),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
