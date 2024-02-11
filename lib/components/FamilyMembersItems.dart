import 'package:flutter/material.dart';

import 'package:audioplayers/audioplayers.dart';

import 'package:language_learing_app/models/familyMembers.dart';

class FamilyMembersItems extends StatelessWidget {
  const FamilyMembersItems({super.key, required this.familyMembers});
  final FamilyMembers familyMembers;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.amber,
      child: Row(
        children: [
          Image.asset(familyMembers.imgFamily),
          const Spacer(
            flex: 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                familyMembers.japanesLanguage,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                familyMembers.englishLanguage,
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
                player.play(AssetSource(familyMembers.sound));
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
