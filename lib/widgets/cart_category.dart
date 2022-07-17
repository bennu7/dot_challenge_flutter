import 'package:dot_test_flutter/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCategory extends StatelessWidget {
  final String imgIcon;
  final String category;
  final String price;

  const CartCategory(
      {Key? key,
      required this.imgIcon,
      required this.category,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      margin: const EdgeInsets.only(right: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Colors.grey[50]
          // border: Border.all(color: Colors.black),
          // boxShadow: const [
          //   BoxShadow(
          //     color: Colors.black54,
          //     offset: Offset(
          //       5.0,
          //       5.0,
          //     ),
          //     blurRadius: 5,
          //     spreadRadius: 0.5,
          //   ), //BoxShadow
          //   BoxShadow(
          //     color: Colors.white,
          //     offset: Offset(0.0, 0.0),
          //     blurRadius: 0.0,
          //     spreadRadius: 0.0,
          //   ), //
          // ],
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imgIcon,
            width: 36,
            height: 36,
          ),
          const SizedBox(height: 12),
          Text(
            category,
            style: GoogleFonts.sourceSansPro(
              textStyle: const TextStyle(
                fontSize: 12,
                color: Color(0xff828282),
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            price,
            style: primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}
