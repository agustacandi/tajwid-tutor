import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';
import 'package:tajwid_tutor/widgets/header.dart';

class BacaanNunPage extends StatefulWidget {
  const BacaanNunPage({super.key});

  @override
  State<BacaanNunPage> createState() => _BacaanNunPageState();
}

class _BacaanNunPageState extends State<BacaanNunPage> {
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
                      'Bacaan Nun',
                      style: whiteTextStyleMedium.copyWith(fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ada lima Hukum cara membaca nun sukun atau tanwin',
                      style: whiteTextStyleMedium.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/img_bacaan_nun.png',
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
                  vertical: 50,
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
                      text: 'Izhar Halqi',
                      onPressed: () {
                        Navigator.pushNamed(context, '/izhar-halqi');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Idgam Bigunnah',
                      onPressed: () {
                        Navigator.pushNamed(context, '/idgam-bigunnah');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: blueColor,
                      shadowColor: blue2Color,
                      text: 'Idgam Bilagunnah',
                      onPressed: () {
                        Navigator.pushNamed(context, '/idgam-bilagunnah');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: orangeColor,
                      shadowColor: orange2Color,
                      text: 'Iqlab',
                      onPressed: () {
                        Navigator.pushNamed(context, '/iqlab');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Ikhfa\'',
                      onPressed: () {
                        Navigator.pushNamed(context, '/ikhfa');
                      },
                    ),
                    const SizedBox(
                      height: 40,
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
