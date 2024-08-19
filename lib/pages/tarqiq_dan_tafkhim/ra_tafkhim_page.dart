import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';

class RaTafkhimPage extends StatefulWidget {
  const RaTafkhimPage({super.key});

  @override
  State<RaTafkhimPage> createState() => _RaTafkhimPageState();
}

class _RaTafkhimPageState extends State<RaTafkhimPage> {
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
                      'Ra’ Tafkhim',
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
                      'a. Ra’ berharakat Fathah atau Fathahtain dan yang berharakah Dhammah atau Dhammahtain.',
                      style: whiteTextStyleMedium.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'b. Ra’ sukun yang sebelumnya terdapat huruf yang berharakah Fathah atau Dhammah',
                      style: whiteTextStyleMedium.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      'c. Ra sukun, sedang huruf sebelumnya berharakah Kasrah yang tidak asli dai perkataan Arab.',
                      style: whiteTextStyleMedium.copyWith(
                        fontSize: 16,
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        style: whiteTextStyleMedium.copyWith(
                          fontSize: 16,
                        ),
                        children: <TextSpan>[
                          const TextSpan(
                            text:
                                'd. ra’ sukun dan huruf sebelumnya berharakah kasrah dan huruf sedudanya berupa ',
                          ),
                          TextSpan(
                            text: 'huruf isti’laa.',
                            style: blackTextStyleBold,
                          ),
                          const TextSpan(
                            text: '.',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset(
                      'assets/images/img_ra_tafkhim.png',
                      width: double.infinity,
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
                      'Contoh Bacaan Ra’ Tafkhim',
                      style: blackTextStyleBold.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Image.asset(
                      'assets/images/img_contoh_bacaan_ra_tafkhim.png',
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
                                  'audios/tarqiq_tafkhim/ra_tafkhim.mp3',
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
