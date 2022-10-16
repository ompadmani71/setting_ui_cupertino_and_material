import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widget/list_tile.dart';
import '../utilts/color.dart';
import '../utilts/globale.dart';
import '../utilts/string.dart';
import '../widget/cupertini_listTile.dart';
import '../widget/list_tile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return (Globals.isIOS)
        ? iosScaffold()
        : androidScaffold();
  }

  Widget iosScaffold (){
    return CupertinoPageScaffold(
        backgroundColor: bgColor,
        navigationBar: CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemRed,
          middle:  Text(settingTitle,
              style: const TextStyle(color: CupertinoColors.white)),
          trailing: CupertinoSwitch(
              value: Globals.isIOS,
              onChanged: (value) {
                setState(() {
                  Globals.isIOS = value;
                });
              }),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
               Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "Common",
                  style: GoogleFonts.roboto(
                      decoration: TextDecoration.none,
                      fontSize: 15,fontWeight: FontWeight.w600,color: CupertinoColors.inactiveGray
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Colors.black12,
                  ),
                ]),
                child: Column(
                  children: [
                    CupertinoListTiles(
                      icon: const Icon(Icons.language, color: Colors.black45),
                      isSwitch: false,
                      title: "Language",
                      subtitle: "English",
                    ),
                    CupertinoListTiles(
                      icon: const Icon(Icons.cloud_outlined,
                          color: Colors.black45),
                      isSwitch: false,
                      title: "Language",
                      subtitle: "English",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "Account",
                  style: GoogleFonts.roboto(
                      decoration: TextDecoration.none,
                      fontSize: 15,fontWeight: FontWeight.w600,color: CupertinoColors.inactiveGray
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Colors.black12,
                  ),
                ]),
                child: Column(
                  children: [
                    CupertinoListTiles(
                      icon: const Icon(Icons.phone, color: Colors.black45),
                      isSwitch: false,
                      title: "Phone Number",
                    ),
                    CupertinoListTiles(
                      icon: const Icon(Icons.email, color: Colors.black45),
                      isSwitch: false,
                      title: "Email",
                    ),
                    CupertinoListTiles(
                      icon: const Icon(Icons.logout, color: Colors.black45),
                      isSwitch: false,
                      title: "Sign Out",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "Security",
                  style:GoogleFonts.roboto(
                      decoration: TextDecoration.none,
                      fontSize: 15,fontWeight: FontWeight.w600,color: CupertinoColors.inactiveGray
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration:
                const BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Colors.black12,
                  ),
                ]),
                child: Column(
                  children: [
                    CupertinoListTiles(
                      icon: const Icon(Icons.security, color: Colors.black45),
                      isSwitch: true,
                      title: "Lock app in background",
                      switchs: CupertinoSwitch(value: Globals.isLockValue, onChanged: (value){
                        setState(() {
                          Globals.isLockValue = value;
                        });
                      })
                    ),
                    CupertinoListTiles(
                      icon: const Icon(Icons.fingerprint_rounded,
                          color: Colors.black45),
                      isSwitch: true,
                      title: "Use FingerPrint",
                      switchs:  CupertinoSwitch(value:  Globals.isFingerprintValue, onChanged: (value){
                        setState(() {
                          Globals.isFingerprintValue = value;
                        });
                      }),
                    ),
                    CupertinoListTiles(
                      icon: const Icon(Icons.lock, color: Colors.black45),
                      isSwitch: true,
                      title: "Change Password",
                      switchs: CupertinoSwitch(value:  Globals.isPasswordValue, onChanged: (value){
                        setState(() {
                          Globals.isPasswordValue = value;
                        });
                      }),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "Misc",
                  style: GoogleFonts.roboto(
                      decoration: TextDecoration.none,
                      fontSize: 15,fontWeight: FontWeight.w600,color: CupertinoColors.inactiveGray
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    CupertinoListTiles(
                      icon: const Icon(Icons.local_laundry_service_outlined,
                          color: Colors.black45),
                      title: "Terms of Service",
                      isSwitch: false,
                    ),
                    CupertinoListTiles(
                      icon: const Icon(Icons.photo_album_outlined,
                          color: Colors.black45),
                      isSwitch: false,
                      title: "Open source Licenses",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget androidScaffold (){
    return Scaffold(
      appBar: AppBar(
        title: Text(settingTitle),
        backgroundColor: Theme.of(context).primaryColor,
        actions: [
          Switch(
              value: Globals.isIOS,
              onChanged: (value) {
                setState(() {
                  Globals.isIOS = value;
                });
              })
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Text("Common",
                    style:
                   GoogleFonts.roboto(
                     fontSize: 15,
                     fontWeight: FontWeight.w600,
                   )),
              ),
              MaterialListTiles(
                  icon: const Icon(Icons.language),
                  title: "Language",
                  subtitle: ("English"),
                  isDivider: true),
              MaterialListTiles(
                  icon: const Icon(Icons.cloud_outlined),
                  title: "Environment",
                  subtitle: ("Production"),
                  isDivider: false),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text("Account",
                    style:
                    GoogleFonts.roboto()),
              ),
              MaterialListTiles(
                  icon: const Icon(Icons.phone),
                  title: "Phone Number",
                  isDivider: true),
              MaterialListTiles(
                icon: Icon(Icons.email),
                title: "Email",
                isDivider: true,
              ),
              MaterialListTiles(
                icon: Icon(Icons.logout),
                title: "Sign out",
                isDivider: false,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text("Security",
                    style:
                    TextStyle(color: Theme.of(context).primaryColor)),
              ),
              MaterialListTiles(
                icon: const Icon(Icons.security),
                title: "Lock app in background",
                isDivider: true,
                trailing: Switch(
                  value: Globals.isLockValue,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (value) {
                    setState(() {
                      Globals.isLockValue = value;
                    });
                  },
                ),
              ),
              MaterialListTiles(
                icon: Icon(Icons.fingerprint_rounded),
                title: "Use fingerprint",
                isDivider: true,
                trailing: Switch(
                  value: Globals.isFingerprintValue,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (value) {
                    setState(() {
                      Globals.isFingerprintValue = value;
                    });
                  },
                ),
              ),
              MaterialListTiles(
                icon: const Icon(Icons.lock),
                title: "Change Password",
                isDivider: false,
                trailing: Switch(
                  value: Globals.isPasswordValue,
                  activeColor: Theme.of(context).primaryColor,
                  onChanged: (value) {
                    setState(() {
                      Globals.isPasswordValue = value;
                    });
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 5),
                child: Text("Misc",
                    style:
                    TextStyle(color: Theme.of(context).primaryColor)),
              ),
              MaterialListTiles(
                icon: const Icon(Icons.local_laundry_service_outlined),
                title: "Terms of Service",
                isDivider: true,
              ),
              MaterialListTiles(
                icon: const Icon(Icons.photo_album_outlined),
                title: "Open source Licenses",
                isDivider: false,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
