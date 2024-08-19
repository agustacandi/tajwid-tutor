import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoTutorialCard extends StatelessWidget {
  final Map videoTutorial;
  const VideoTutorialCard({super.key, required this.videoTutorial});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 220.h,
      margin: const EdgeInsets.only(
        bottom: 30,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: greenColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 21,
              left: 21,
            ),
            padding: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: greenColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                width: 2,
                color: blackColor,
              ),
            ),
            child: Text(
              videoTutorial['kategori'],
              style: blackTextStyleMedium.copyWith(
                fontSize: 12,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: 21,
              bottom: 12,
            ),
            child: Text(
              videoTutorial['judul'],
              style: blackTextStyleMedium.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          Divider(
            color: greenColor,
            thickness: 2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 21,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    Uri url = Uri.parse(videoTutorial['link']);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: greenColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: blackColor,
                      ),
                    ),
                    child: Center(
                      child: DecoratedIcon(
                        icon: Icon(
                          Icons.play_arrow_rounded,
                          color: whiteColor,
                        ),
                        decoration: const IconDecoration(
                          border: IconBorder(
                            width: 5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'Play Video',
                  style: blackTextStyleMedium.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class VideoRekomendasiCard extends StatelessWidget {
  final Map videoRekomendasi;
  const VideoRekomendasiCard({super.key, required this.videoRekomendasi});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w,
      height: 200.h,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: greenColor,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              top: 21,
              left: 21,
            ),
            padding: const EdgeInsets.all(9),
            decoration: BoxDecoration(
              color: greenColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              border: Border.all(
                width: 2,
                color: blackColor,
              ),
            ),
            child: Text(
              videoRekomendasi['kategori'],
              style: blackTextStyleMedium.copyWith(
                fontSize: 12,
              ),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(
              left: 21,
              bottom: 12,
            ),
            child: Text(
              videoRekomendasi['judul'],
              style: blackTextStyleMedium.copyWith(
                fontSize: 16,
              ),
            ),
          ),
          Divider(
            color: greenColor,
            thickness: 2,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 21,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    Uri url = Uri.parse(videoRekomendasi['link']);
                    if (await canLaunchUrl(url)) {
                      await launchUrl(
                        url,
                        mode: LaunchMode.externalApplication,
                      );
                    }
                  },
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: greenColor,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2,
                        color: blackColor,
                      ),
                    ),
                    child: Center(
                      child: DecoratedIcon(
                        icon: Icon(
                          Icons.play_arrow_rounded,
                          color: whiteColor,
                        ),
                        decoration: const IconDecoration(
                          border: IconBorder(
                            width: 5,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  'Play Video',
                  style: blackTextStyleMedium.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
