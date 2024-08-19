import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';
import 'package:tajwid_tutor/widgets/header.dart';

class MateriBelajarPage extends StatefulWidget {
  const MateriBelajarPage({super.key});

  @override
  State<MateriBelajarPage> createState() => _MateriBelajarPageState();
}

class _MateriBelajarPageState extends State<MateriBelajarPage> {
  bool _isLoading = true;
  bool _isButtonTapped = false;
  bool _hurufHijaiyah = false;
  bool _bacaanNun = false;
  bool _bacaanMim = false;
  bool _idgham = false;
  bool _lamTarif = false;
  bool _tarqiqTafkhim = false;
  bool _bacaanMad = false;
  bool _waqaf = false;

  getBoolOfButton() async {
    final prefs = await SharedPreferences.getInstance();
    bool hurufHijaiyah = prefs.getBool('huruf_hijaiyah')!;
    bool bacaanNun = prefs.getBool('bacaan_nun')!;
    bool bacaanMim = prefs.getBool('bacaan_mim')!;
    bool idgham = prefs.getBool('idgham')!;
    bool lamTarif = prefs.getBool('lam_tarif')!;
    bool tarqiqTafkhim = prefs.getBool('tarqiq_tafkhim')!;
    bool bacaanMad = prefs.getBool('bacaan_mad')!;
    bool waqaf = prefs.getBool('waqaf')!;
    setState(() {
      _hurufHijaiyah = hurufHijaiyah;
      _bacaanNun = bacaanNun;
      _bacaanMim = bacaanMim;
      _idgham = idgham;
      _lamTarif = lamTarif;
      _tarqiqTafkhim = tarqiqTafkhim;
      _bacaanMad = bacaanMad;
      _waqaf = waqaf;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      getBoolOfButton();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: _isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Header(text: 'Materi\nBelajar'),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 50),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          CustomButton(
                            backgrounColor: greenColor,
                            shadowColor: green2Color,
                            text: 'Huruf-huruf Hijaiyah',
                            onPressed: () async {
                              if (!_isButtonTapped) {
                                setState(() {
                                  _isButtonTapped = true;
                                });
                                if (_hurufHijaiyah) {
                                  Navigator.pushNamed(
                                      context, '/huruf-hijaiyah');
                                } else {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  double hurufHijaiyah =
                                      prefs.getDouble('point_materi')! + 0.125;
                                  double babSelesai =
                                      prefs.getDouble('bab_selesai')! + 1;
                                  await prefs.setBool('huruf_hijaiyah', true);
                                  await prefs.setDouble(
                                      'point_materi', hurufHijaiyah);
                                  await prefs.setDouble(
                                      'bab_selesai', babSelesai);
                                  if (!mounted) return;
                                  Navigator.pushNamed(
                                      context, '/huruf-hijaiyah');
                                }
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            backgrounColor: yellowColor,
                            shadowColor: yellow2Color,
                            text: 'Bacaan Nun',
                            onPressed: () async {
                              if (!_isButtonTapped) {
                                setState(() {
                                  _isButtonTapped = true;
                                });
                                if (_bacaanNun) {
                                  Navigator.pushNamed(context, '/bacaan-nun');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                } else {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  double bacaanNun =
                                      prefs.getDouble('point_materi')! + 0.125;
                                  double babSelesai =
                                      prefs.getDouble('bab_selesai')! + 1;
                                  await prefs.setBool('bacaan_nun', true);
                                  await prefs.setDouble(
                                      'point_materi', bacaanNun);
                                  await prefs.setDouble(
                                      'bab_selesai', babSelesai);
                                  if (!mounted) return;
                                  Navigator.pushNamed(context, '/bacaan-nun');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                }
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            backgrounColor: blueColor,
                            shadowColor: blue2Color,
                            text: 'Bacaan Mim',
                            onPressed: () async {
                              if (!_isButtonTapped) {
                                setState(() {
                                  _isButtonTapped = true;
                                });
                                if (_bacaanMim) {
                                  Navigator.pushNamed(context, '/bacaan-mim');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                } else {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  double bacaanMim =
                                      prefs.getDouble('point_materi')! + 0.125;
                                  double babSelesai =
                                      prefs.getDouble('bab_selesai')! + 1;
                                  await prefs.setBool('bacaan_mim', true);
                                  await prefs.setDouble(
                                      'point_materi', bacaanMim);
                                  await prefs.setDouble(
                                      'bab_selesai', babSelesai);
                                  if (!mounted) return;
                                  Navigator.pushNamed(context, '/bacaan-mim');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                }
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            backgrounColor: orangeColor,
                            shadowColor: orange2Color,
                            text: 'Idgham',
                            onPressed: () async {
                              if (!_isButtonTapped) {
                                setState(() {
                                  _isButtonTapped = true;
                                });
                                if (_idgham) {
                                  Navigator.pushNamed(context, '/idgham');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                } else {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  double idgham =
                                      prefs.getDouble('point_materi')! + 0.125;
                                  double babSelesai =
                                      prefs.getDouble('bab_selesai')! + 1;
                                  await prefs.setBool('idgham', true);
                                  await prefs.setDouble('point_materi', idgham);
                                  await prefs.setDouble(
                                      'bab_selesai', babSelesai);
                                  if (!mounted) return;
                                  Navigator.pushNamed(context, '/idgham');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                }
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            backgrounColor: greenColor,
                            shadowColor: green2Color,
                            text: 'Lam Ta\'rif',
                            onPressed: () async {
                              if (!_isButtonTapped) {
                                setState(() {
                                  _isButtonTapped = true;
                                });
                                if (_lamTarif) {
                                  Navigator.pushNamed(context, '/lam-tarif');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                } else {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  double lamTarif =
                                      prefs.getDouble('point_materi')! + 0.125;
                                  double babSelesai =
                                      prefs.getDouble('bab_selesai')! + 1;
                                  await prefs.setBool('lam_tarif', true);
                                  await prefs.setDouble(
                                      'point_materi', lamTarif);
                                  await prefs.setDouble(
                                      'bab_selesai', babSelesai);
                                  if (!mounted) return;
                                  Navigator.pushNamed(context, '/lam-tarif');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                }
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            backgrounColor: yellowColor,
                            shadowColor: yellow2Color,
                            text: 'Tarqiq & Tafkhim',
                            onPressed: () async {
                              if (!_isButtonTapped) {
                                setState(() {
                                  _isButtonTapped = true;
                                });
                                if (_tarqiqTafkhim) {
                                  Navigator.pushNamed(
                                      context, '/tarqiq-tafkhim');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                } else {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  double tarkiqTafkhim =
                                      prefs.getDouble('point_materi')! + 0.125;
                                  double babSelesai =
                                      prefs.getDouble('bab_selesai')! + 1;
                                  await prefs.setBool('tarqiq_tafkhim', true);
                                  await prefs.setDouble(
                                      'point_materi', tarkiqTafkhim);
                                  await prefs.setDouble(
                                      'bab_selesai', babSelesai);
                                  if (!mounted) return;
                                  Navigator.pushNamed(
                                      context, '/tarqiq-tafkhim');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                }
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            backgrounColor: blueColor,
                            shadowColor: blue2Color,
                            text: 'Bacaan Mad',
                            onPressed: () async {
                              if (!_isButtonTapped) {
                                setState(() {
                                  _isButtonTapped = true;
                                });
                                if (_bacaanMad) {
                                  Navigator.pushNamed(context, '/bacaan-mad');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                } else {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  double bacaanMad =
                                      prefs.getDouble('point_materi')! + 0.125;
                                  double babSelesai =
                                      prefs.getDouble('bab_selesai')! + 1;
                                  await prefs.setBool('bacaan_mad', true);
                                  await prefs.setDouble(
                                      'point_materi', bacaanMad);
                                  await prefs.setDouble(
                                      'bab_selesai', babSelesai);
                                  if (!mounted) return;
                                  Navigator.pushNamed(context, '/bacaan-mad');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                }
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            backgrounColor: orangeColor,
                            shadowColor: orange2Color,
                            text: 'Waqaf',
                            onPressed: () async {
                              if (!_isButtonTapped) {
                                setState(() {
                                  _isButtonTapped = true;
                                });
                                if (_waqaf) {
                                  Navigator.pushNamed(context, '/waqaf');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                } else {
                                  final prefs =
                                      await SharedPreferences.getInstance();
                                  double waqaf =
                                      prefs.getDouble('point_materi')! + 0.125;
                                  double babSelesai =
                                      prefs.getDouble('bab_selesai')! + 1;
                                  await prefs.setBool('waqaf', true);
                                  await prefs.setDouble('point_materi', waqaf);
                                  await prefs.setDouble(
                                      'bab_selesai', babSelesai);
                                  if (!mounted) return;
                                  Navigator.pushNamed(context, '/waqaf');
                                  setState(() {
                                    _isButtonTapped = false;
                                  });
                                }
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  hurufHijaiyah() async {
    final prefs = await SharedPreferences.getInstance();
  }
}
