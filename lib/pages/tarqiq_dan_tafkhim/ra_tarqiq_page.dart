import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';

class RaTarqiqPage extends StatefulWidget {
  const RaTarqiqPage({super.key});

  @override
  State<RaTarqiqPage> createState() => _RaTarqiqPageState();
}

class _RaTarqiqPageState extends State<RaTarqiqPage> {
  final player = AudioPlayer();
  bool isPlayed = false;
  bool isPaused = false;
  bool isStopped = false;

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellowColor,
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
                      'Ra’ Tarqiq',
                      style: whiteTextStyleMedium.copyWith(fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ra’ harus dibaca tebal apabila :',
                      style: whiteTextStyleMedium.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'a. Ra’ berharakah Kasrah dimanapun letaknya pada suatu perkataan. Diawal, ditengah maupun diakhir perkataan, pada kata kerja maupun kata benda.',
                      style: whiteTextStyleMedium.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'b. Ra’ yang sebelumnya terdapat huruf yaa’ sukun.',
                      style: whiteTextStyleMedium.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'c. Ra’ sukun yang huruf sebelumya berharakah Kasrah yang asli dan sesudahnya tidak berupa huruf isti’la.',
                      style: whiteTextStyleMedium.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 60,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      'Contoh Bacaan Ra’ Tarqiq',
                      style: blackTextStyleBold.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Image.asset(
                      'assets/images/img_contoh_bacaan_ra_tarqiq.png',
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            setState(() {
                              isPlayed = !isPlayed;
                            });
                            if (isPaused) {
                              player.resume();
                            }

                            if (isPlayed) {
                              await player.play(
                                AssetSource(
                                  'audios/tarqiq_tafkhim/ra_tarqiq.mp3',
                                ),
                              );
                            }
                            player.onPlayerComplete.listen((event) {
                              player.stop();
                              setState(() {
                                isPlayed = false;
                              });
                            });
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: isPlayed ? greyColor : yellowColor,
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
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (isPlayed) {
                              setState(() {
                                isPlayed = false;
                                isPaused = true;
                              });
                              player.pause();
                            }
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: isPlayed ? yellowColor : greyColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.pause_rounded,
                                size: 28,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (isPlayed) {
                              setState(() {
                                isPlayed = false;
                              });
                              player.stop();
                            }
                          },
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: isPlayed ? yellowColor : greyColor,
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.stop_rounded,
                                size: 28,
                                color: whiteColor,
                              ),
                            ),
                          ),
                        ),
                      ],
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
