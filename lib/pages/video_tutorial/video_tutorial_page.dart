import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajwid_tutor/pages/video_tutorial_kategori_page.dart';
import 'package:tajwid_tutor/shared/huruf_hijaiyah.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/shared/video_tutorial.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';
import 'package:tajwid_tutor/widgets/carousel_dots.dart';
import 'package:tajwid_tutor/widgets/video_tutorial.dart';

class VideoTutorialPage extends StatefulWidget {
  const VideoTutorialPage({super.key});

  @override
  State<VideoTutorialPage> createState() => _VideoTutorialPageState();
}

class _VideoTutorialPageState extends State<VideoTutorialPage> {
  int _current = 0;
  bool isSearch = false;
  final CarouselController _controller = CarouselController();
  List<Map<String, dynamic>> _videoTutorial = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white2Color,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(27),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomBackButton(),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/images/img_video_tutorial.png',
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          List<Map<String, dynamic>> result = videoTutorial
                              .where(
                                  (element) => element['judul'].contains(value))
                              .toList();
                          setState(() {
                            isSearch = true;
                            _videoTutorial = result;
                          });
                        } else {
                          setState(() {
                            isSearch = false;
                          });
                        }
                      },
                      decoration: InputDecoration(
                        hintText: 'Cari Video Tajwid',
                        hintStyle: greyTextStyleMedium.copyWith(fontSize: 16),
                        prefixIcon: Icon(
                          Icons.search,
                          color: grey3Color,
                        ),
                        filled: true,
                        fillColor: whiteColor,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: greenColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: greenColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    isSearch
                        ? Container()
                        : Text(
                            'Dasar-dasar Tajwid',
                            style: blackTextStyleMedium.copyWith(fontSize: 18),
                          ),
                  ],
                ),
              ),
              isSearch
                  ? SizedBox(
                      child: Column(
                        children: _videoTutorial
                            .map(
                              (e) => VideoTutorialCard(
                                videoTutorial: e,
                              ),
                            )
                            .toList(),
                      ),
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 320.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CarouselSlider(
                                items: dasarTajwid
                                    .map(
                                      (e) => VideoRekomendasiCard(
                                        videoRekomendasi: e,
                                      ),
                                    )
                                    .toList(),
                                carouselController: _controller,
                                options: CarouselOptions(
                                    aspectRatio: 16 / 9,
                                    enableInfiniteScroll: false,
                                    viewportFraction: 1,
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        _current = index;
                                      });
                                    }),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CarouselDots(
                                index: _current,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  'Menu Bab Bacaan',
                                  style: blackTextStyleMedium.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                        GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 6,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200,
                            childAspectRatio: 3 / 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        VideoTutorialKategoriPage(
                                      kategori: kategori[index],
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    width: 2,
                                    color: greenColor,
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    kategori[index],
                                    style: blackTextStyleMedium.copyWith(
                                      fontSize: 12,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
