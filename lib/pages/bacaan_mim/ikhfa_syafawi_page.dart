import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';

class IkhfaSyafawiPage extends StatefulWidget {
  const IkhfaSyafawiPage({super.key});

  @override
  State<IkhfaSyafawiPage> createState() => _IkhfaSyafawiPageState();
}

class _IkhfaSyafawiPageState extends State<IkhfaSyafawiPage> {
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
      backgroundColor: blueColor,
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
                      'Ikhfa’ Syafawi',
                      style: whiteTextStyleMedium.copyWith(fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Hukum membacanya disebut ikhfa’ syafawi ialah apabila mim sukun bertemu dengan ba’.',
                      style: whiteTextStyleMedium.copyWith(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/img_ikhfa_syafawi.png',
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
                            text: 'maka cara membacanya harus disuarakan ',
                          ),
                          TextSpan(
                            text: 'samar-samar ',
                            style: whiteTextStyleBold,
                          ),
                          const TextSpan(
                            text: 'di bibir dan ',
                          ),
                          TextSpan(
                            text: 'didengungkan.',
                            style: whiteTextStyleBold,
                          ),
                          const TextSpan(
                            text: 'di bibir serta tertutup.',
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
                      'Contoh Bacaan Ikhfa Syafawi',
                      style: blackTextStyleBold.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Image.asset(
                      'assets/images/img_contoh_bacaan_ikhfa_syafawi.png',
                    ),
                    const SizedBox(
                      height: 50,
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
                                  'audios/bacaan_mim/ikhfa_syafawi.mp3',
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
                              color: isPlayed ? greyColor : blueColor,
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
                              color: isPlayed ? blueColor : greyColor,
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
                              color: isPlayed ? blueColor : greyColor,
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
