import 'package:flutter/material.dart';

import 'package:language_learing_app/models/Number.dart';

class NumbersItem extends StatelessWidget {
  const NumbersItem({ required this.number ,super.key});
  final Number number ;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: double.infinity,
        color: Colors.amberAccent,
        child: Row(
          children: [
            Image.asset(number.imgPath),
            const Spacer(
              flex: 1,
            ),
            const Column(
              children: [
                Text(
                  "Icho",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  "One",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.playlist_play)),
          ],
        ),
      );
  }
}