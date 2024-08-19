import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';
import 'package:tajwid_tutor/widgets/header.dart';

class TarqiqDanTafkhimPage extends StatefulWidget {
  const TarqiqDanTafkhimPage({super.key});

  @override
  State<TarqiqDanTafkhimPage> createState() => _TarqiqDanTafkhimPageState();
}

class _TarqiqDanTafkhimPageState extends State<TarqiqDanTafkhimPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellowColor,
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
                      'Tarqiq dan Tafkhim',
                      style: whiteTextStyleMedium.copyWith(fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Huruf Lam dan Ra’ ada yang dibaca tipis atau tarqiq dan ada yang dibaca tebal atau tafkhim',
                      style: whiteTextStyleMedium.copyWith(fontSize: 16),
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
                      text: 'Lam Tafkhim',
                      onPressed: () {
                        Navigator.pushNamed(context, '/lam-tafkhim');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Lam Tarqiq',
                      onPressed: () {
                        Navigator.pushNamed(context, '/lam-tarqiq');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: blueColor,
                      shadowColor: blue2Color,
                      text: 'Ra’ Tafkhim',
                      onPressed: () {
                        Navigator.pushNamed(context, '/ra-tafkhim');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: orangeColor,
                      shadowColor: orange2Color,
                      text: 'Ra’ Tarqiq',
                      onPressed: () {
                        Navigator.pushNamed(context, '/ra-tarqiq');
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
