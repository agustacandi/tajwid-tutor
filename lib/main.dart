import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_arid_lissukun_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_badal_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_iwad_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_jaiz_munfasil_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_lazim_harfi_mukhaffaf_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_lazim_harfi_musaqqal_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_lazim_mukhaffaf_kalimi_page.dart.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_lazim_musyabba_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_lazim_muzaqqal_kalimi_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_lein_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_silah_qasirah_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_silah_towilah_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_tabii_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/mad_wajib_muttasil_page.dart';
import 'package:tajwid_tutor/pages/lam_tarif/idgam_qamariyah.dart';
import 'package:tajwid_tutor/pages/lam_tarif/idgam_syamsiyah.dart';
import 'package:tajwid_tutor/pages/lam_tarif/lam_tarif_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mim/bacaan_mim_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mim/idgam_mimi_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mim/ikhfa_syafawi_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mim/izhar_syafawi_page.dart';
import 'package:tajwid_tutor/pages/bacaan_nun/bacaan_nun_page.dart';
import 'package:tajwid_tutor/pages/bacaan_nun/idgam_bigunnah_page.dart';
import 'package:tajwid_tutor/pages/bacaan_nun/idgam_bilagunnah_page.dart';
import 'package:tajwid_tutor/pages/bacaan_nun/ikhfa_page.dart';
import 'package:tajwid_tutor/pages/bacaan_nun/iqlab_page.dart';
import 'package:tajwid_tutor/pages/bacaan_nun/izhar_halqi_page.dart';
import 'package:tajwid_tutor/pages/home_page.dart';
import 'package:tajwid_tutor/pages/huruf_hijaiyah_page.dart';
import 'package:tajwid_tutor/pages/idgham/idgam_mutajanisain.dart';
import 'package:tajwid_tutor/pages/idgham/idgam_mutamasilain_page.dart';
import 'package:tajwid_tutor/pages/idgham/idgam_mutaqaribain.dart';
import 'package:tajwid_tutor/pages/idgham/idgham_page.dart';
import 'package:tajwid_tutor/pages/latihan_soal/latihan_soal_page.dart';
import 'package:tajwid_tutor/pages/bacaan_mad/bacaan_mad_page.dart';
import 'package:tajwid_tutor/pages/materi_belajar_page.dart';
import 'package:tajwid_tutor/pages/progress_belajar_page.dart';
import 'package:tajwid_tutor/pages/register_page.dart';
import 'package:tajwid_tutor/pages/splash_page.dart';
import 'package:tajwid_tutor/pages/tarqiq_dan_tafkhim/lam_tafkhim_page.dart';
import 'package:tajwid_tutor/pages/tarqiq_dan_tafkhim/lam_tarqiq_page.dart';
import 'package:tajwid_tutor/pages/tarqiq_dan_tafkhim/ra_tafkhim_page.dart';
import 'package:tajwid_tutor/pages/tarqiq_dan_tafkhim/ra_tarqiq_page.dart';
import 'package:tajwid_tutor/pages/tarqiq_dan_tafkhim/tarqiq_dan_tafkhim_page.dart';
import 'package:tajwid_tutor/pages/video_tutorial/video_tutorial_page.dart';
import 'package:tajwid_tutor/pages/waqaf_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        title: 'Tajwid Tutor',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: child,
        routes: {
          '/': (context) => const SplashScreen(),
          '/register': (context) => const RegisterPage(),
          '/home': (context) => const HomePage(),
          '/progress-belajar': (context) => const ProgressBelajarPage(),
          '/latihan-soal': (context) => const LatihanSoalPage(),
          '/materi': (context) => const MateriBelajarPage(),
          '/huruf-hijaiyah': (context) => const HurufHijaiyahPage(),
          '/bacaan-nun': (context) => const BacaanNunPage(),
          '/izhar-halqi': (context) => const IzharHalqiPage(),
          '/idgam-bigunnah': (context) => const IdgamBigunnahPage(),
          '/idgam-bilagunnah': (context) => const IdgamBilagunnahPage(),
          '/iqlab': (context) => const IqlabPage(),
          '/ikhfa': (context) => const IkhfaPage(),
          '/bacaan-mim': (context) => const BacaanMimPage(),
          '/izhar-syafawi': (context) => const IzharSyafawiPage(),
          '/ikhfa-syafawi': (context) => const IkhfaSyafawiPage(),
          '/idgam-mimi': (context) => const IdgamMimiPage(),
          '/idgham': (context) => const IdghamPage(),
          '/idgam-mutamasilain': (context) => const IdgamMutamasilainPage(),
          '/idgam-mutajanisain': (context) => const IdgamMutajanisainPage(),
          '/idgam-mutaqaribain': (context) => const IdgamMutaqaribainPage(),
          '/lam-tarif': (context) => const LamTarifPage(),
          '/idgam-qamariyah': (context) => const IdgamQamariyahPage(),
          '/idgam-syamsiyah': (context) => const IdgamSyamsiyahPage(),
          '/tarqiq-tafkhim': (context) => const TarqiqDanTafkhimPage(),
          '/lam-tafkhim': (context) => const LamTafkhimPage(),
          '/lam-tarqiq': (context) => const LamTarqiqPage(),
          '/ra-tafkhim': (context) => const RaTafkhimPage(),
          '/ra-tarqiq': (context) => const RaTarqiqPage(),
          '/bacaan-mad': (context) => const BacaanMadPage(),
          '/mad-tabii': (context) => const MadTabiiPage(),
          '/mad-wajib-muttasil': (context) => const MadWajibMuttasilPage(),
          '/mad-jaiz-munfasil': (context) => const MadJaizMunfasilPage(),
          '/mad-lazim-muzaqqal-kalimi': (context) =>
              const MadLazimMuzaqqalKalimiPage(),
          '/mad-lazim-mukhaffaf-kalimi': (context) =>
              const MadLazimMukhaffafKalimiPage(),
          '/mad-lein': (context) => const MadLeinPage(),
          '/mad-arid-lissukun': (context) => const MadAridLissukunPage(),
          '/mad-silah-qasirah': (context) => const MadSilahQasirahPage(),
          '/mad-silah-towilah': (context) => const MadSilahTowilahPage(),
          '/mad-iwad': (context) => const MadIwadPage(),
          '/mad-badal': (context) => const MadBadalPage(),
          '/mad-lazim-harfi-mukhaffaf': (context) =>
              const MadLazimHarfiMukhaffafPage(),
          '/mad-lazim-harfi-musaqqal': (context) =>
              const MadLazimHarfiMusaqqalPage(),
          '/mad-lazim-musyabba': (context) => const MadLazimMusyabbaPage(),
          '/waqaf': (context) => const WaqafPage(),
          '/video-tutorial': (context) => const VideoTutorialPage(),
        },
      ),
    );
  }
}
