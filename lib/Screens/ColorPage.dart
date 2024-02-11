import 'package:flutter/material.dart';

import 'package:language_learing_app/components/ColorItem.dart';
import 'package:language_learing_app/models/color.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  final List<ColorModel> colorItemsList = const [
    ColorModel(
        imgPath: "assets/images/colors/color_black.png",
        textJanpanies: "textJanpanies",
        textEnglish: "black",
        sound: "sounds/colors/black.wav"),
    ColorModel(
        imgPath: "assets/images/colors/color_brown.png",
        textJanpanies: "textJanpanies",
        textEnglish: "brown",
        sound: "sounds/colors/brown.wav"),
    ColorModel(
        imgPath: "assets/images/colors/color_dusty_yellow.png",
        textJanpanies: "textJanpanies",
        textEnglish: "dusty yellow",
        sound: "sounds/colors/dusty_yellow.wav"),
    ColorModel(
        imgPath: "assets/images/colors/color_gray.png",
        textJanpanies: "textJanpanies",
        textEnglish: "gray",
        sound: "sounds/colors/gray.wav"),
    ColorModel(
        imgPath: "assets/images/colors/color_green.png",
        textJanpanies: "textJanpanies",
        textEnglish: "green",
        sound: "sounds/colors/green.wav"),
    ColorModel(
        imgPath: "assets/images/colors/color_red.png",
        textJanpanies: "textJanpanies",
        textEnglish: "red",
        sound: "sounds/colors/red.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Color Page"),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
          itemCount: colorItemsList.length,
          itemBuilder: (context, index) {
            return ColorItem(color: colorItemsList[index]);
          },
        ));
  }
}
