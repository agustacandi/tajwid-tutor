import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';
import 'package:tajwid_tutor/widgets/header.dart';

class IdghamPage extends StatefulWidget {
  const IdghamPage({super.key});

  @override
  State<IdghamPage> createState() => _IdghamPageState();
}

class _IdghamPageState extends State<IdghamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
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
                      'Bacaan Idgam',
                      style: whiteTextStyleMedium.copyWith(fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ada tiga macam Idgam yang berbeda-beda. Perbedaan makhraj huruf dan sifatnya.',
                      style: whiteTextStyleMedium.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
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
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Idgam Mutamasilain',
                      onPressed: () {
                        Navigator.pushNamed(context, '/idgam-mutamasilain');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: orangeColor,
                      shadowColor: orange2Color,
                      text: 'Idgam Mutajanisain',
                      onPressed: () {
                        Navigator.pushNamed(context, '/idgam-mutajanisain');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: blueColor,
                      shadowColor: blue2Color,
                      text: 'Idgam Mutaqaribain',
                      onPressed: () {
                        Navigator.pushNamed(context, '/idgam-mutaqaribain');
                      },
                    ),
                    const SizedBox(
                      height: 180,
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
