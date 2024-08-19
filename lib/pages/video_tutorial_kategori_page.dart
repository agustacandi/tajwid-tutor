import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/shared/video_tutorial.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';
import 'package:tajwid_tutor/widgets/video_tutorial.dart';

class VideoTutorialKategoriPage extends StatefulWidget {
  final String kategori;
  const VideoTutorialKategoriPage({super.key, required this.kategori});

  @override
  State<VideoTutorialKategoriPage> createState() =>
      _VideoTutorialKategoriPageState();
}

class _VideoTutorialKategoriPageState extends State<VideoTutorialKategoriPage> {
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
                    Column(
                      children: videoTutorial
                          .where((element) =>
                              element['kategori'].contains(widget.kategori))
                          .map((e) => VideoTutorialCard(videoTutorial: e))
                          .toList(),
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
