import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';

class PlayButton extends StatelessWidget {
  final Color color;
  final bool isPlayed;
  final VoidCallback onTap;
  const PlayButton({
    super.key,
    required this.color,
    required this.isPlayed,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          color: isPlayed ? greyColor : color,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            Icons.play_arrow_rounded,
            size: 28,
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
