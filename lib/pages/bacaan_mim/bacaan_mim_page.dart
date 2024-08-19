import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';
import 'package:tajwid_tutor/widgets/header.dart';

class BacaanMimPage extends StatefulWidget {
  const BacaanMimPage({super.key});

  @override
  State<BacaanMimPage> createState() => _BacaanMimPageState();
}

class _BacaanMimPageState extends State<BacaanMimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(27),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomBackButton(),
                    const SizedBox(height: 20),
                    Text(
                      'Bacaan Mim',
                      style: whiteTextStyleMedium.copyWith(fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ada tiga Hukum cara membaca mim sukun atau tanwin',
                      style: whiteTextStyleMedium.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/img_bacaan_mim.png',
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 70,
                ),
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
                      text: 'Izhar Syafawi',
                      onPressed: () {
                        Navigator.pushNamed(context, '/izhar-syafawi');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: orangeColor,
                      shadowColor: orange2Color,
                      text: 'Ikhfa’ Syafawi',
                      onPressed: () {
                        Navigator.pushNamed(context, '/ikhfa-syafawi');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: blueColor,
                      shadowColor: blue2Color,
                      text: 'Idgam Mimi',
                      onPressed: () {
                        Navigator.pushNamed(context, '/idgam-mimi');
                      },
                    ),
                    const SizedBox(
                      height: 120,
                    )
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
