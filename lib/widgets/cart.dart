import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  final String? judul;
  final String? rupiah;
  final Color? color;

  const Cart({Key? key, this.judul, this.rupiah, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Container(
      width: width / 2 - 30,
      height: 97,
      padding: const EdgeInsets.only(top: 14, left: 14, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            judul.toString(),
            maxLines: 2,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 14),
          Expanded(
            child: Text(
              rupiah.toString(),
              maxLines: 2,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
