import 'package:flutter/material.dart';

import 'package:language_learing_app/Screens/NumbersPage.dart';
import 'package:language_learing_app/Screens/fmaily%20Members.dart';
import 'package:language_learing_app/components/CatergoryLanguage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
        backgroundColor: const Color(0xFF41729F),
      ),
      body: Column(
        children: [
          Catergory(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((BuildContext context) {
                return const NumbersPage();
              })));
            },
            catergoryColor: 0xFF5885AF,
            textcatergory: "Numbers",
          ),
          Catergory(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((BuildContext context) {
                return const FamilyMembersPage();
              })));
            },
            catergoryColor: 0xFFC3E0E5,
            textcatergory: "Fmaily Members",
          ),
          Catergory(
            catergoryColor: 0xFF5885AF,
            textcatergory: "Colors",
          ),
          Catergory(
            catergoryColor: 0xFFC3E0E5,
            textcatergory: "phrases",
          ),
        ],
      ),
    );
  }
}
