import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

import 'package:language_learing_app/models/color.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.color});
  final ColorModel color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.amber,
      child: Row(
        children: [
          Image.asset(color.imgPath),
          const Spacer(
            flex: 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                color.textJanpanies,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                color.textEnglish,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 2,
          ),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(color.sound));
              },
              icon: const Icon(Icons.play_arrow)),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
