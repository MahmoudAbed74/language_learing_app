import 'package:flutter/material.dart';

import 'package:language_learing_app/components/numbersItems.dart';
import 'package:language_learing_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});

  final List<Number> numbers = const [
    Number(
        imgPath: "assets/images/numbers/number_one.png",
        textJanpanies: "Icho",
        textEnglish: "one",
        sound: "sounds/numbers/number_one_sound.mp3"),
    Number(
        imgPath: "assets/images/numbers/number_two.png",
        textJanpanies: "ni",
        textEnglish: "two",
        sound: "sounds/numbers/number_two_sound.mp3"),
    Number(
        imgPath: "assets/images/numbers/number_three.png",
        textJanpanies: "san",
        textEnglish: "three",
        sound: "sounds/numbers/number_three_sound.mp3"),
    Number(
        imgPath: "assets/images/numbers/number_four.png",
        textJanpanies: "Shi",
        textEnglish: "four",
        sound: "sounds/numbers/number_four_sound.mp3"),
    Number(
        imgPath: "assets/images/numbers/number_five.png",
        textJanpanies: "go",
        textEnglish: "five",
        sound: "sounds/numbers/number_five_sound.mp3"),
    Number(
        imgPath: "assets/images/numbers/number_six.png",
        textJanpanies: "roku",
        textEnglish: "six",
        sound: "sounds/numbers/number_six_sound.mp3"),
    Number(
        imgPath: "assets/images/numbers/number_seven.png",
        textJanpanies: "nana",
        textEnglish: "seven",
        sound: "sounds/numbers/number_seven_sound.mp3"),
    Number(
        imgPath: "assets/images/numbers/number_eight.png",
        textJanpanies: "hachi",
        textEnglish: "eight",
        sound: "sounds/numbers/number_eight_sound.mp3"),
    Number(
        imgPath: "assets/images/numbers/number_nine.png",
        textJanpanies: "ku",
        textEnglish: "nine",
        sound: "sounds/numbers/number_nine_sound.mp3"),
    Number(
        imgPath: "assets/images/numbers/number_ten.png",
        textJanpanies: "juu",
        textEnglish: "ten",
        sound: "sounds/numbers/number_ten_sound.mp3"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Numbers Page"),
          centerTitle: true,
          backgroundColor: const Color(0xFF41729F),
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return NumbersItem(number: numbers[index]);
          },
        ));
  }
}
