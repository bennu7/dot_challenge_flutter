import 'package:dot_test_flutter/model/category.dart';
import 'package:dot_test_flutter/pages/spending_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'pages/home_page.dart';

Box? box;

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CategoryAdapter());
  box = await Hive.openBox('myBoxDb');

  box!.put(1, Category(name: 'Makanan', imgIcon: 'assets/icon_makanan.png'));
  box!.put(2, Category(name: 'Internet', imgIcon: 'assets/icon_internet.png'));
  box!.put(3, Category(name: 'Edukasi', imgIcon: 'assets/icon_edukasi.png'));
  box!.put(4, Category(name: 'hadiah', imgIcon: 'assets/icon_hadiah.png'));
  box!.put(
      5, Category(name: 'Transport', imgIcon: 'assets/icon_transport.png'));
  box!.put(6, Category(name: 'Belanja', imgIcon: 'assets/icon_belanja.png'));
  box!.put(
      7, Category(name: 'Alat Rumah', imgIcon: 'assets/icon_alat_rumah.png'));
  box!.put(8, Category(name: 'Olahraga', imgIcon: 'assets/icon_olahraga.png'));
  box!.put(9, Category(name: 'Hiburan', imgIcon: 'assets/icon_hiburan.png'));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: TestHive(),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/spending': (context) => const SpendingPage(),
      },
    );
  }
}
