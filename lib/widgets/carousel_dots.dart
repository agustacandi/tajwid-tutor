import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';

class CarouselDots extends StatelessWidget {
  final int index;
  const CarouselDots({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 38.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: index == 0 ? 24.0 : 12.0,
            height: 12.0,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 4.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
              border: Border.all(
                width: 2,
                color: greenColor,
              ),
            ),
          ),
          Container(
            width: index == 1 ? 24.0 : 12.0,
            height: 12.0,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 4.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
              border: Border.all(
                width: 2,
                color: greenColor,
              ),
            ),
          ),
          Container(
            width: index == 2 ? 24.0 : 12.0,
            height: 12.0,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 4.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
              border: Border.all(
                width: 2,
                color: greenColor,
              ),
            ),
          ),
          Container(
            width: index == 3 ? 24.0 : 12.0,
            height: 12.0,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 4.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
              border: Border.all(
                width: 2,
                color: greenColor,
              ),
            ),
          ),
          Container(
            width: index == 4 ? 24.0 : 12.0,
            height: 12.0,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 4.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
              border: Border.all(
                width: 2,
                color: greenColor,
              ),
            ),
          ),
          Container(
            width: index == 5 ? 24.0 : 12.0,
            height: 12.0,
            margin: const EdgeInsets.symmetric(
              vertical: 8.0,
              horizontal: 4.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: whiteColor,
              border: Border.all(
                width: 2,
                color: greenColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
