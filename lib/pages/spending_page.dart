import 'package:dot_test_flutter/theme.dart';
import 'package:flutter/material.dart';

class SpendingPage extends StatelessWidget {
  const SpendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget pengeluaranInput() {
      return Container(
        height: 50,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 14, top: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: const Color(0xffE0E0E0),
          ),
        ),
        child: TextFormField(
          decoration: const InputDecoration.collapsed(
            hintText: 'Nama Pengeluaran',
          ),
        ),
      );
    }

    Widget categoryPick() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(left: 14, right: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: const Color(0xffE0E0E0),
          ),
        ),
        child: Center(
          child: Row(
            children: [
              Image.asset(
                'assets/icon_makanan_no_bg.png',
                width: 20,
              ),
              const SizedBox(width: 16),
              Text(
                'Makanan',
                style: primaryTextStyle,
              ),
              const Spacer(),
              Image.asset(
                'assets/icon_btn_category.png',
                width: 20,
              ),
            ],
          ),
        ),
      );
    }

    Widget tanggalPengeluaranInput() {
      return Container(
        height: 50,
        margin: const EdgeInsets.only(top: 20),
        width: double.infinity,
        padding: const EdgeInsets.only(left: 14, top: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: const Color(0xffE0E0E0),
          ),
        ),
        child: TextFormField(
          decoration: const InputDecoration.collapsed(
            hintText: 'Tanggal Pengeluaran',
          ),
        ),
      );
    }

    Widget nominalInput() {
      return Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 20),
        padding: const EdgeInsets.only(left: 14, top: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: const Color(0xffE0E0E0),
          ),
        ),
        child: TextFormField(
          decoration: const InputDecoration.collapsed(
            hintText: 'Tanggal Pengeluaran',
          ),
        ),
      );
    }

    Widget button() {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: const Color(0xffE0E0E0),
        ),
        onPressed: () {},
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              'Simpan',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
              ),
            ),
          ),
        ),
      );
    }

    Widget buttonFilled() {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: const Color(0xff0A97B0),
        ),
        onPressed: () {},
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              'Simpan',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: bold,
                color: const Color(0xffDFE0DF),
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Nominal',
          style: primaryTextStyle.copyWith(
            color: Colors.black,
            fontWeight: bold,
            fontSize: 18,
          ),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            pengeluaranInput(),
            categoryPick(),
            tanggalPengeluaranInput(),
            nominalInput(),
            const SizedBox(height: 32),
            button(),
            // const SizedBox(height: 32),
            // buttonFilled(),
          ],
        ),
      ),
    );
  }
}
