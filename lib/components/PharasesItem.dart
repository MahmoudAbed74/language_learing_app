import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

import 'package:language_learing_app/models/Pharases.dart';

class PharasesItem extends StatelessWidget {
  const PharasesItem({super.key, required this.pharases});

  final Pharases pharases;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        color: Colors.amberAccent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Column(
                children: [
                  Text(
                    pharases.textJanpanies,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    pharases.textEnglish,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              const Spacer(
                flex: 1,
              ),
              IconButton(
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(pharases.sound));
                  },
                  icon: const Icon(Icons.play_arrow)),
              const SizedBox(
                width: 20,
              )
            ],
          ),
        ));
  }
}
