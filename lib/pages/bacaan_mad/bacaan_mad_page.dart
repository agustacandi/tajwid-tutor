import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';

class BacaanMadPage extends StatefulWidget {
  const BacaanMadPage({super.key});

  @override
  State<BacaanMadPage> createState() => _BacaanMadPageState();
}

class _BacaanMadPageState extends State<BacaanMadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
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
                      'Bacaan Panjang (Mad)',
                      style: whiteTextStyleMedium.copyWith(fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Memanjangkan bacaan suara huruf dengan panjang satu alif aau dua harakah, dua alif atau empat harakah dan tiga alif atau enak harakah.',
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
                      text: 'Mad Tabi’i',
                      onPressed: () {
                        Navigator.pushNamed(context, '/mad-tabii');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Mad Wajib Muttasil',
                      onPressed: () {
                        Navigator.pushNamed(context, '/mad-wajib-muttasil');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: blueColor,
                      shadowColor: blue2Color,
                      text: 'Mad Jaiz Munfasil',
                      onPressed: () {
                        Navigator.pushNamed(context, '/mad-jaiz-munfasil');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: orangeColor,
                      shadowColor: orange2Color,
                      text: 'Mad Lazim Muzaqqal Kalimi ',
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/mad-lazim-muzaqqal-kalimi');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: greenColor,
                      shadowColor: green2Color,
                      text: 'Mad Lazim Mukhaffaf Kalimi',
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/mad-lazim-mukhaffaf-kalimi');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Mad Lein',
                      onPressed: () {
                        Navigator.pushNamed(context, '/mad-lein');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: blueColor,
                      shadowColor: blue2Color,
                      text: 'Mad Arid Lissukun',
                      onPressed: () {
                        Navigator.pushNamed(context, '/mad-arid-lissukun');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: orangeColor,
                      shadowColor: orange2Color,
                      text: 'Mad Silah Qasirah',
                      onPressed: () {
                        Navigator.pushNamed(context, '/mad-silah-qasirah');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: greenColor,
                      shadowColor: green2Color,
                      text: 'Mad Silah Towilah',
                      onPressed: () {
                        Navigator.pushNamed(context, '/mad-silah-towilah');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Mad ‘Iwad',
                      onPressed: () {
                        Navigator.pushNamed(context, '/mad-iwad');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: blueColor,
                      shadowColor: blue2Color,
                      text: 'Mad Badal',
                      onPressed: () {
                        Navigator.pushNamed(context, '/mad-badal');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: orangeColor,
                      shadowColor: orange2Color,
                      text: 'Mad Lazim Harfi Mukhaffaf',
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/mad-lazim-harfi-mukhaffaf');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: greenColor,
                      shadowColor: green2Color,
                      text: 'Mad Lazim Harfi Musaqqal',
                      onPressed: () {
                        Navigator.pushNamed(
                            context, '/mad-lazim-harfi-musaqqal');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Mad Lazim Musyabba’',
                      onPressed: () {
                        Navigator.pushNamed(context, '/mad-lazim-musyabba');
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
