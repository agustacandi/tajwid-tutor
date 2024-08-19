import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajwid_tutor/shared/theme.dart';

class HurufHijaiyahCard extends StatelessWidget {
  final String hurufHijaiyah, teks;
  const HurufHijaiyahCard({
    super.key,
    required this.hurufHijaiyah,
    required this.teks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: grey2Color,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            hurufHijaiyah,
            style: blackTextStyleMedium.copyWith(
              fontSize: 30.sp,
            ),
          ),
          Text(
            teks,
            style: blackTextStyleMedium.copyWith(
              fontSize: 16.sp,
            ),
          ),
        ],
      ),
    );
  }
}
