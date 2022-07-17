import 'package:dot_test_flutter/widgets/cart_category.dart';
import 'package:dot_test_flutter/widgets/cart_category_bottom.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../model/category.dart';
import '../widgets/cart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Box box;
  late Category makanan;
  late Category internet;
  late Category transport;

  @override
  void initState() {
    box = Hive.box('myBoxDb');
    makanan = box.get(1);
    internet = box.get(2);
    transport = box.get(5);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Halo,User",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.start,
                ),
                const Text(
                  "Jangan lupa catat keuanganmu setiap hari!",
                  style: TextStyle(
                    color: Color(0xff828282),
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                // *Pengeluaran
                Row(
                  children: const [
                    Cart(
                      judul: "Pengeluaranmu\n hari Ini",
                      rupiah: "Rp.30.000",
                      color: Color(0xff0A97B0),
                    ),
                    SizedBox(width: 20),
                    Cart(
                      judul: "Pengeluaranmu\n bulan Ini",
                      rupiah: "Rp335.000",
                      color: Color(0xff46B5A7),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // *Pengeluaran berdasarkan kategori
                const Text(
                  "Pengeluaran berdasarkan kategori",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      CartCategory(
                        imgIcon: makanan.imgIcon.toString(),
                        category: makanan.name.toString(),
                        price: "Rp. 70.000",
                      ),
                      CartCategory(
                        imgIcon: internet.imgIcon.toString(),
                        category: internet.name.toString(),
                        price: 'Rp. 50.000',
                      ),
                      CartCategory(
                        imgIcon: transport.imgIcon.toString(),
                        category: transport.name.toString(),
                        price: 'Rp. 20.000',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                Text(
                  "Hari ini",
                  style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                const CartCategoryBottom(
                  iconImg: 'assets/icon_makanan_no_bg.png',
                  subCategory: 'Ayam geprek',
                  price: 'Rp. 15.000',
                ),
                const CartCategoryBottom(
                  iconImg: 'assets/icon_transport_no_bg.png',
                  subCategory: 'Gojek',
                  price: 'Rp. 15.000',
                ),
                Text(
                  "Kemarin",
                  style: GoogleFonts.sourceSansPro(
                    textStyle: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 20),
                const CartCategoryBottom(
                  iconImg: 'assets/icon_internet_no_bg.png',
                  subCategory: 'Paket Data',
                  price: 'Rp. 50.000',
                ),
                const CartCategoryBottom(
                  iconImg: 'assets/icon_internet_no_bg.png',
                  subCategory: 'Paket Data',
                  price: 'Rp. 50.000',
                ),
                const CartCategoryBottom(
                  iconImg: 'assets/icon_internet_no_bg.png',
                  subCategory: 'Paket Data',
                  price: 'Rp. 50.000',
                ),
                const CartCategoryBottom(
                  iconImg: 'assets/icon_internet_no_bg.png',
                  subCategory: 'Paket Data',
                  price: 'Rp. 50.000',
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff0A97B0),
        onPressed: () {
          Navigator.pushNamed(context, '/spending');
        },
        child: const Icon(Icons.add, size: 35),
      ),
    );
  }
}
