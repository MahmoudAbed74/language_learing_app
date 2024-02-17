import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

import 'package:language_learing_app/models/Pharases.dart';

class PharasesItem extends StatelessWidget {
  const PharasesItem({super.key, required this.pharases});

  final Pharases pharases;
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topLeft,
        height: 80,
        color: const Color(0xFFC3E0E5),
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pharases.textJanpanies,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  pharases.textEnglish,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const Spacer(
              flex: 3,
            ),
            IconButton(
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(pharases.sound));
                },
                icon: const Icon(Icons.play_arrow)),
          ],
        ));
  }
}
