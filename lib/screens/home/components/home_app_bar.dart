import 'package:flutter/material.dart';
import 'package:starbucks/gen/assets.gen.dart';
import 'package:starbucks/gen/fonts.gen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                Assets.images.cup.path,
                width: 32,
              ),
              const SizedBox(
                width: 3,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mael Toukap's",
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.gilroy,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Space",
                    style: TextStyle(
                        fontSize: 13,
                        fontFamily: FontFamily.gilroy,
                        color: Colors.grey[600]),
                  ),
                ],
              ),
            ],
          ),
          Image.asset(
            Assets.images.basket.path,
            width: 28,
          )
        ],
      ),
    );
  }
}
