import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/audio_button.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';

class IdgamBilagunnahPage extends StatefulWidget {
  const IdgamBilagunnahPage({super.key});

  @override
  State<IdgamBilagunnahPage> createState() => _IdgamBilagunnahPageState();
}

class _IdgamBilagunnahPageState extends State<IdgamBilagunnahPage> {
  final player = AudioPlayer();
  bool isPlayed = false;
  bool isPaused = false;
  bool isStopped = false;

  @override
  void dispose() {
    super.dispose();
    player.dispose();
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
                      'Idgam Bilagunnah',
                      style: whiteTextStyleMedium.copyWith(fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Idgam Bilagunnah artinya memasukkan dengan tidak berdengung. Hukum membacanya adalah apabila nun sukun atau tanwin bertemu dengan salah satu huruf idgam bilagunnah',
                      style: whiteTextStyleMedium.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/img_idgam_bilagunnah.png',
                      width: double.infinity,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        style: whiteTextStyleMedium.copyWith(
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          const TextSpan(
                            text: 'maka cara membacanya dimasukkan dengan ',
                          ),
                          TextSpan(
                            text: 'tidak berdengung.',
                            style: whiteTextStyleBold,
                          ),
                        ],
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
                  vertical: 50,
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
                      'Contoh Bacaan Idgam Bilagunnah',
                      style: blackTextStyleBold.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/img_contoh_bacaan_idgam_bilagunnah.png',
                    ),
                    const SizedBox(
                      height: 30,
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
                                  'audios/bacaan_nun/idgham_bilagunnah.mp3',
                                ),
                              );
                            }
                            player.onPlayerComplete.listen((event) {
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
