import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/huruf_hijaiyah.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/header.dart';
import 'package:tajwid_tutor/widgets/huruf_hijaiyah_card.dart';

class HurufHijaiyahPage extends StatefulWidget {
  const HurufHijaiyahPage({super.key});

  @override
  State<HurufHijaiyahPage> createState() => _HurufHijaiyahPageState();
}

class _HurufHijaiyahPageState extends State<HurufHijaiyahPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(text: 'Huruf Hijaiyah'),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 30,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 29,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return HurufHijaiyahCard(
                        hurufHijaiyah: hurufHijaiyah[index]['hijaiyah']!,
                        teks: hurufHijaiyah[index]['huruf']!,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
