import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';

class MadLazimMuzaqqalKalimiPage extends StatefulWidget {
  const MadLazimMuzaqqalKalimiPage({super.key});

  @override
  State<MadLazimMuzaqqalKalimiPage> createState() =>
      _MadLazimMuzaqqalKalimiPageState();
}

class _MadLazimMuzaqqalKalimiPageState
    extends State<MadLazimMuzaqqalKalimiPage> {
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
      backgroundColor: greenColor,
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
                      'Mad Lazim Musaqqal Kalimi',
                      style: whiteTextStyleMedium.copyWith(fontSize: 32),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lazim artinya pasti Musaqqal artinya diberatkan dan Kalimi artinya kata. Cara membacanya disebut Mad Lazim Musaqqal Kalimi adalah apbila Mad Tabi’i berhadapan dengan huruf yang bertasydid didalam satu kata.',
                      style: whiteTextStyleMedium.copyWith(fontSize: 16),
                    ),
                    Text(
                      'Membacanya harus dipanjangkan terlebih dahulu baru ditasydidkan, panjang nya sampai enam harkat atau tiga alif.',
                      style: whiteTextStyleMedium.copyWith(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
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
                      'Contoh Bacaan Mad Lazim Musaqqal Kalimi',
                      style: blackTextStyleBold.copyWith(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'وَلَا ضَآلُّوْا لِلْعِبَادِ',
                            style: blackTextStyleMedium.copyWith(
                              fontSize: 24.sp,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'مِن دَآبَّةٍ',
                            style: blackTextStyleMedium.copyWith(
                              fontSize: 24.sp,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            'اَلۡحَـآقَّةُ',
                            style: blackTextStyleMedium.copyWith(
                              fontSize: 24.sp,
                            ),
                          ),
                        ],
                      ),
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
                                  'audios/bacaan_mad/mad_lazim_musaqqal_kalimi.mp3',
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
                              color: isPlayed ? greyColor : greenColor,
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
                              color: isPlayed ? greenColor : greyColor,
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
                              color: isPlayed ? greenColor : greyColor,
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
