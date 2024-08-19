import 'package:flutter/material.dart';
import 'package:tajwid_tutor/shared/theme.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: greenColor,
            ),
            child: Text('', style: whiteTextStyleMedium.copyWith(fontSize: 24)),
          ),
          ListTile(
            leading: Icon(Icons.book, color: orangeColor),
            title: Text('Petunjuk',
                style: blackTextStyleMedium.copyWith(fontSize: 18)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.info, color: blueColor),
            title: Text('Tentang',
                style: blackTextStyleMedium.copyWith(fontSize: 18)),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
