import 'package:flutter/material.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers Page"),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      body: Container(
        height: 80,
        width: double.infinity,
        color: Colors.amberAccent,
        child: Row(
          children: [
            Image.asset("assets/images/numbers/number_one.png"),
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
      ),
    );
  }
}
