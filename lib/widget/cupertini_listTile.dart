import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CupertinoListTiles extends StatelessWidget {
  CupertinoListTiles(
      {Key? key,
      this.title,
      this.icon,
      this.subtitle,
      required this.isSwitch,
      this.switchs,
      this.trailing})
      : super(key: key);
  Icon? icon;
  String? title;
  String? subtitle;
  bool isSwitch = false;
  Widget? trailing;
  Widget? switchs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          icon!,
          const SizedBox(
            width: 10,
          ),
          Text(
            title ?? "",
            style: GoogleFonts.roboto(
                decoration: TextDecoration.none,
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
          const Spacer(),
          (subtitle != null && isSwitch == false)
              ? const Icon(CupertinoIcons.right_chevron)
              : const SizedBox(),
          (isSwitch == false)
              ? Row(
                  children: [
                    Text(subtitle ?? "",
                        style: GoogleFonts.roboto(
                            decoration: TextDecoration.none,
                            fontSize: 15,
                            color: Colors.black54,
                            fontWeight: FontWeight.w400)),
                    const Icon(CupertinoIcons.right_chevron)
                  ],
                )
              : (switchs != null)
                  ? switchs!
                  : const SizedBox(),
        ],
      ),
    );
  }
}
