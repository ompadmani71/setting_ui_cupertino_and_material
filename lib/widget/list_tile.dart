import 'package:flutter/material.dart';

class MaterialListTiles extends StatelessWidget {
  MaterialListTiles(
      {Key? key, this.title, this.icon, this.subtitle, required this.isDivider,this.switchValue,this.trailing})
      : super(key: key);

  Icon? icon;
  String? title;
  String? subtitle;
  bool isDivider = false;
  bool isTrailing = false;
  Widget? trailing;
bool? switchValue;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: ListTile(
            dense: true,
            title: Text(title ?? ''),
            leading: icon,
            subtitle: Text(subtitle ?? ''),
            trailing: trailing,
            onTap: () {},
          ),
        ),
        if (isDivider)
          const Divider(
            color: Colors.black12,
          )
      ],
    );
  }
}
