import 'package:flutter/material.dart';

import 'package:language_learing_app/components/ColorItem.dart';
import 'package:language_learing_app/models/color.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});

  final List<ColorModel> colorItemsList =const [ColorModel(imgPath: imgPath, textJanpanies: textJanpanies, textEnglish: textEnglish, sound: sound),
    
  ]
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
