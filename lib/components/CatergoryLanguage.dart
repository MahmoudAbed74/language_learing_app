import 'package:flutter/material.dart';

import 'package:language_learing_app/models/Number.dart';
class Catergory extends StatelessWidget {
  Catergory({this.catergoryColor, this.textcatergory, this.onTap, super.key});
  int? catergoryColor;
  String? textcatergory;
  VoidCallback? onTap; //ToDo function()
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 60,
        color: Color(catergoryColor!),
        child: Text(
          "  ${textcatergory!}",
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
