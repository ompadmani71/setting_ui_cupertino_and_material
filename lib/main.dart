import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:outcaster/screen/setting_screen.dart';
import 'package:outcaster/utilts/globale.dart';

void main() {
  runApp((Globals.isIOS)
      ? const CupertinoApp(
          home: SettingScreen(),
          theme: CupertinoThemeData(
            primaryColor: Color(0xfff3eff9),
          ),
        )
      : MaterialApp(
          home: const SettingScreen(),
          theme: ThemeData(primaryColor: Colors.red),
        ));
}
