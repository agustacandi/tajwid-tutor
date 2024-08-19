import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';

class WaqafPage extends StatefulWidget {
  const WaqafPage({super.key});

  @override
  State<WaqafPage> createState() => _WaqafPageState();
}

class _WaqafPageState extends State<WaqafPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(27),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomBackButton(),
                const SizedBox(height: 20),
                Text(
                  'Tanda-Tanda Waqaf',
                  style: whiteTextStyleMedium.copyWith(fontSize: 32),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Waqaf adalah berhenti sejenak atau putus bunyi suara den berganti nafas. Tempatnya diakhir kata.',
                  style: whiteTextStyleMedium.copyWith(fontSize: 16),
                ),
                const SizedBox(height: 20),
                Image.asset('assets/images/img_waqaf.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
