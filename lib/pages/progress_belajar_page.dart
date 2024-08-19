import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';

class ProgressBelajarPage extends StatefulWidget {
  const ProgressBelajarPage({super.key});

  @override
  State<ProgressBelajarPage> createState() => _ProgressBelajarPageState();
}

class _ProgressBelajarPageState extends State<ProgressBelajarPage> {
  bool _isLoading = true;
  double _pointMateri = 0;
  double _pointSoal = 0;
  double _babSelesai = 0;
  getProgress() async {
    final prefs = await SharedPreferences.getInstance();
    double pointMateri = prefs.getDouble('point_materi')!;
    double pointSoal = prefs.getDouble('point_soal')!;
    double babSelesai = prefs.getDouble('bab_selesai')!;
    setState(() {
      _isLoading = false;
      _pointMateri = pointMateri;
      _pointSoal = pointSoal;
      _babSelesai = babSelesai;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      getProgress();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white4Color,
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipPath(
                    clipper: CustomClipPath(),
                    child: Container(
                      width: double.infinity,
                      height: 300,
                      padding: const EdgeInsets.all(27),
                      color: blueColor,
                      child: SafeArea(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomBackButton(),
                            const SizedBox(
                              height: 26,
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 80,
                              child: Row(
                                children: [
                                  Container(
                                    width: 116,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      color: white4Color,
                                      borderRadius:
                                          const BorderRadius.horizontal(
                                              left: Radius.circular(10)),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '${_babSelesai.toInt().toString()} Bab\nSelesai',
                                        style: blackTextStyleMedium.copyWith(
                                          fontSize: 18,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 80,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/img_progres_belajar_banner.png',
                                          ),
                                        ),
                                        borderRadius: BorderRadius.horizontal(
                                            right: Radius.circular(10)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Progress Belajar',
                          style: blackTextStyleMedium.copyWith(
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(
                          height: 42,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Jumlah Materi Selesai',
                            style: blackTextStyleMedium.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 50,
                          lineHeight: 40.0,
                          percent: _pointMateri,
                          progressColor: blueColor,
                          backgroundColor: whiteColor,
                          animation: true,
                          animationDuration: 1000,
                          barRadius: const Radius.circular(20),
                          center: Text(
                            "${(_pointMateri * 100).toString()}%",
                            style: blackTextStyleMedium.copyWith(fontSize: 16),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Jumlah Latihan Soal Selesai',
                            style: blackTextStyleMedium.copyWith(
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width - 50,
                          lineHeight: 40.0,
                          percent: 0.5,
                          progressColor: blueColor,
                          backgroundColor: whiteColor,
                          animation: true,
                          animationDuration: 1000,
                          barRadius: const Radius.circular(20),
                          center: Text(
                            "50%",
                            style: blackTextStyleMedium.copyWith(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
      // Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(50),
      //     child: LinearPercentIndicator(
      //       width: MediaQuery.of(context).size.width - 100,
      //       lineHeight: 40.0,
      //       percent: 0.2,
      //       progressColor: blueColor,
      //       backgroundColor: whiteColor,
      //       animation: true,
      //       animationDuration: 1000,
      //       barRadius: const Radius.circular(20),
      //       center: Text(
      //         "50%",
      //         style: blackTextStyleMedium.copyWith(fontSize: 16),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    Path path = Path();

    path.lineTo(0, h);
    path.quadraticBezierTo(
      w * 0.5,
      h - 100,
      w,
      h,
    );
    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
