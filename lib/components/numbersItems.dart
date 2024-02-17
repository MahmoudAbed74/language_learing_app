import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

import 'package:language_learing_app/models/number.dart';

class NumbersItem extends StatelessWidget {
  const NumbersItem({required this.number, super.key});
  final Number number;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      color: const Color(0xFF5885AF),
      child: Row(
        children: [
          Image.asset(number.imgPath),
          const Spacer(
            flex: 1,
          ),
          Column(
            children: [
              Text(
                number.textJanpanies,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                number.textEnglish,
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
                player.play(AssetSource(number.sound));
              },
              icon: const Icon(Icons.play_arrow)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
