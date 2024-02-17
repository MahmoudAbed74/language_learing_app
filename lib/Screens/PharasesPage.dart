import 'package:flutter/material.dart';

import 'package:language_learing_app/components/PharasesItem.dart';
import 'package:language_learing_app/models/Pharases.dart';

class PharasesPage extends StatelessWidget {
  const PharasesPage({super.key});

  final List<Pharases> pharasesList = const [
    Pharases(
        textJanpanies: "Kimasu ka?",
        textEnglish: "Are you coming?",
        sound: "sounds/phrases/are_you_coming.wav"),
    Pharases(
        textJanpanies: "Kōdoku suru koto o wasurenaide kudasai?",
        textEnglish: "Don't forget to subscribe ?",
        sound: "sounds/phrases/dont_forget_to_subscribe.wav"),
    Pharases(
        textJanpanies: "Go kibun wa ikagadesu ka?",
        textEnglish: "How are you feeling?",
        sound: "sounds/phrases/how_are_you_feeling.wav"),
    Pharases(
        textJanpanies: "Watashi wa anime ga daisukidesu",
        textEnglish: "I love anime",
        sound: "sounds/phrases/i_love_anime.wav"),
    Pharases(
        textJanpanies: "Puroguramingu ga daisukidesu",
        textEnglish: "I love programming",
        sound: "sounds/phrases/i_love_programming.wav"),
    Pharases(
        textJanpanies: " ",
        textEnglish: "Programming is easy",
        sound: "sounds/phrases/programming_is_easy.wav"),
    Pharases(
        textJanpanies: "Puroguramingu wa kantandesu",
        textEnglish: "where are you going?",
        sound: "sounds/phrases/where_are_you_going.wav"),
    Pharases(
        textJanpanies: "Hai, ikimasu",
        textEnglish: "yes, i'm coming",
        sound: "sounds/phrases/yes_im_coming.wav"),
    Pharases(
        textJanpanies: "Anata no namae wa nanidesu ka?",
        textEnglish: "What is your name? ",
        sound: "sounds/phrases/what_is_your_name.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Pharases Page"),
          centerTitle: true,
          backgroundColor: const Color(0xFF41729F),
        ),
        body: ListView.builder(
          itemCount: pharasesList.length,
          itemBuilder: (context, index) {
            return PharasesItem(pharases: pharasesList[index]);
          },
        ));
  }
}
