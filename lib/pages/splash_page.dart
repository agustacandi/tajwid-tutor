import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tajwid_tutor/shared/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  getData() async {
    final prefs = await SharedPreferences.getInstance();
    final bool? register = prefs.getBool('register');
    // Membuat delay 3 detik sebelum pindah ke halaman home
    if (register.runtimeType != Null) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, '/home');
      });
    } else {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, '/register');
      });
    }
  }

  // Dijalankan ketika widget pertama kali dibuat
  @override
  void initState() {
    super.initState();
    // Membuat delay 3 detik sebelum pindah ke halaman home
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white2Color,
      body: Center(
        child: Image.asset(
          'assets/images/img_logo.png',
          width: 222,
          height: 69,
        ),
      ),
    );
  }
}
