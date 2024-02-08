import 'package:flutter/material.dart';

import 'package:language_learing_app/components/numbersItems.dart';
import 'package:language_learing_app/models/Number.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  final Number one = const Number(
      imgPath: "assets/images/numbers/number_one.png",
      textJanpanies: "Icho",
      textEnglish: "one",
      sound: "sound");
  final List<Number> numbers = const [
    Number(
        imgPath: "assets/images/numbers/number_one.png",
        textJanpanies: "Icho",
        textEnglish: "one",
        sound: "sound"),
    Number(
        imgPath: "assets/images/numbers/number_one.png",
        textJanpanies: "Icho",
        textEnglish: "one",
        sound: "sound"),
    Number(
        imgPath: "assets/images/numbers/number_one.png",
        textJanpanies: "Icho",
        textEnglish: "one",
        sound: "sound"),
    Number(
        imgPath: "assets/images/numbers/number_one.png",
        textJanpanies: "Icho",
        textEnglish: "one",
        sound: "sound"),
    Number(
        imgPath: "assets/images/numbers/number_one.png",
        textJanpanies: "Icho",
        textEnglish: "one",
        sound: "sound"),
    Number(
        imgPath: "assets/images/numbers/number_one.png",
        textJanpanies: "Icho",
        textEnglish: "one",
        sound: "sound"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Numbers Page"),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            return NumbersItem(number: numbers[index]);
            ;
          },
        ));
  }
}
