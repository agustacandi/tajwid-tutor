import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tajwid_tutor/shared/theme.dart';
import 'package:tajwid_tutor/widgets/buttons.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameController = TextEditingController();

  String _value = "Laki-laki";

  List<DropdownMenuItem<String>> get _dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "Laki-laki", child: Text("Laki-laki")),
      const DropdownMenuItem(value: "Perempuan", child: Text("Perempuan")),
    ];
    return menuItems;
  }

  nextButton() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('nama', _nameController.text);
    await prefs.setString('gender', _value);
    await prefs.setDouble('point_materi', 0);
    await prefs.setDouble('point_soal', 0);
    await prefs.setDouble('bab_selesai', 0);
    await prefs.setBool('register', true);

    // Shared Preferences untuk materi belajar
    await prefs.setBool('huruf_hijaiyah', false);
    await prefs.setBool('bacaan_nun', false);
    await prefs.setBool('bacaan_mim', false);
    await prefs.setBool('idgham', false);
    await prefs.setBool('lam_tarif', false);
    await prefs.setBool('tarqiq_tafkhim', false);
    await prefs.setBool('bacaan_mad', false);
    await prefs.setBool('waqaf', false);

    if (!mounted) return;
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColor,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 120,
            ),
            Text(
              'Buat profil kamu yuk',
              style: blackTextStyleMedium.copyWith(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 42,
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Nama',
                hintStyle: greyTextStyleMedium.copyWith(
                  fontSize: 16,
                ),
                filled: true,
                fillColor: grey4Color,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: greenColor,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: greenColor,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Umur',
                hintStyle: greyTextStyleMedium.copyWith(
                  fontSize: 16,
                ),
                filled: true,
                fillColor: grey4Color,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: yellowColor,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 2,
                    color: yellowColor,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            DropdownButtonHideUnderline(
              child: DropdownButtonFormField(
                decoration: InputDecoration(
                  hintText: 'Umur',
                  hintStyle: greyTextStyleMedium.copyWith(
                    fontSize: 16,
                  ),
                  filled: true,
                  fillColor: grey4Color,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: blueColor,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      color: blueColor,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                value: _value,
                items: _dropdownItems,
                onChanged: (value) {
                  setState(() {
                    _value = value!;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 135,
            ),
            CustomButton(
              backgrounColor: greenColor,
              shadowColor: green2Color,
              text: 'Lanjutkan',
              onPressed: nextButton,
            )
          ],
        ),
      ),
    );
  }
}
