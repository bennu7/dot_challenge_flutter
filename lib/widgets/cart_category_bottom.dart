import 'package:flutter/material.dart';

import '../theme.dart';

class CartCategoryBottom extends StatelessWidget {
  final String iconImg;
  final String subCategory;
  final String price;

  const CartCategoryBottom(
      {Key? key,
      required this.iconImg,
      required this.subCategory,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 67,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[50],
      ),
      child: Row(
        children: [
          Image.asset(
            iconImg,
            width: 20,
          ),
          const SizedBox(width: 16),
          Text(
            subCategory,
            style: primaryTextStyle,
          ),
          const Spacer(),
          Text(
            price,
            style: primaryTextStyle.copyWith(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
