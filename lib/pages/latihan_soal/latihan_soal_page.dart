import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';
import 'package:tajwid_tutor/widgets/header.dart';

class LatihanSoalPage extends StatefulWidget {
  const LatihanSoalPage({super.key});

  @override
  State<LatihanSoalPage> createState() => _LatihanSoalPageState();
}

class _LatihanSoalPageState extends State<LatihanSoalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(text: 'Latihan Soal'),
              const SizedBox(height: 40),
              Container(
                width: double.infinity,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    CustomButton(
                      backgrounColor: greenColor,
                      shadowColor: green2Color,
                      text: 'Bacaan Nun',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Bacaan Mim',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: blueColor,
                      shadowColor: blue2Color,
                      text: 'Idgham',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: orangeColor,
                      shadowColor: orange2Color,
                      text: 'Lam Ta\'rif',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: greenColor,
                      shadowColor: green2Color,
                      text: 'Tarqiq & Tafkhim',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Bacaan Mad',
                      onPressed: () {},
                    ),
                    const SizedBox(height: 80),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
