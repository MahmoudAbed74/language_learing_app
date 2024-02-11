import 'package:flutter/material.dart';


import 'package:language_learing_app/components/FamilyMembersItems.dart';
import 'package:language_learing_app/models/familyMembers.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});
  final List<FamilyMembers> familyMembersList = const [
    FamilyMembers(
        imgFamily: "assets/images/family_members/family_father.png",
        japanesLanguage: "japanesLanguage",
        englishLanguage: "father",
        sound: "sounds/family_members/father.wav"),
    FamilyMembers(
        imgFamily: "assets/images/family_members/family_mother.png",
        japanesLanguage: "japanesLanguage",
        englishLanguage: "mother",
        sound: "sounds/family_members/mother.wav"),
    FamilyMembers(
        imgFamily: "assets/images/family_members/family_grandfather.png",
        japanesLanguage: "japanesLanguage",
        englishLanguage: "grand father",
        sound: "sounds/family_members/grandfather.wav"),
    FamilyMembers(
        imgFamily: "assets/images/family_members/family_grandmother.png",
        japanesLanguage: "japanesLanguage",
        englishLanguage: "grand mother",
        sound: "sounds/family_members/grandmother.wav"),
    FamilyMembers(
        imgFamily: "assets/images/family_members/family_daughter.png",
        japanesLanguage: "japanesLanguage",
        englishLanguage: "daughter",
        sound: "sounds/family_members/daughter.wav"),
    FamilyMembers(
        imgFamily: "assets/images/family_members/family_son.png",
        japanesLanguage: "japanesLanguage",
        englishLanguage: "son",
        sound: "sounds/family_members/son.wav"),
    FamilyMembers(
        imgFamily: "assets/images/family_members/family_older_brother.png",
        japanesLanguage: "japanesLanguage",
        englishLanguage: "older brother",
        sound: "sounds/family_members/olderbother.wav"),
    FamilyMembers(
        imgFamily: "assets/images/family_members/family_older_sister.png",
        japanesLanguage: "japanesLanguage",
        englishLanguage: "older sister",
        sound: "sounds/family_members/oldersister.wav"),
    FamilyMembers(
        imgFamily: "assets/images/family_members/family_younger_brother.png",
        japanesLanguage: "japanesLanguage",
        englishLanguage: "younger brohter",
        sound: "sounds/family_members/youngerbrohter.wav"),
    FamilyMembers(
        imgFamily: "assets/images/family_members/family_younger_sister.png",
        japanesLanguage: "japanesLanguage",
        englishLanguage: "younger sister",
        sound: "sounds/family_members/youngersister.wav"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Family Members"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: familyMembersList.length,
          itemBuilder: (context, index) {
            return FamilyMembersItems(
              familyMembers: familyMembersList[index],
            );
          },
        ));
  }
}
