import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';
import 'package:tajwid_tutor/widgets/header.dart';

class LamTarifPage extends StatefulWidget {
  const LamTarifPage({super.key});

  @override
  State<LamTarifPage> createState() => _LamTarifPageState();
}

class _LamTarifPageState extends State<LamTarifPage> {
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
                      'Bacaan Lam Ta’rif',
                      style: whiteTextStyleMedium.copyWith(fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'lam Ta’rif yaitu alif dan lam (  ) yang selalu berada di awal kata benda sehingga perkataan tersebut ma’rifat.',
                      style: whiteTextStyleMedium.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Al ada yang dibaca terang dan jelas atau di-izhar-kan , karena berhadapan dengan huruf-huruf tertentu. Dan ada pula al yang bunyinya dihilangkan atau tidak diucapkan melainkan di-idgam-kan pada huruf berikutnya.',
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
                      backgrounColor: yellowColor,
                      shadowColor: yellow2Color,
                      text: 'Idgam Qamariyah',
                      onPressed: () {
                        Navigator.pushNamed(context, '/idgam-qamariyah');
                      },
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      backgrounColor: blueColor,
                      shadowColor: blue2Color,
                      text: 'Idgam Syamsiyah',
                      onPressed: () {
                        Navigator.pushNamed(context, '/idgam-syamsiyah');
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
