import 'package:autism_for_kids/views/options/views/games/puzzle/math_puzzle.dart';
import 'package:autism_for_kids/views/options/views/games/puzzle/word_puzzle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../../widgets/back_button.dart';

class Puzzle extends StatefulWidget {
  const Puzzle({super.key});

  @override
  State<Puzzle> createState() => _PuzzleState();
}

class _PuzzleState extends State<Puzzle> {
  List<Map<String, dynamic>> items = [
    {
      'label': 'Word Puzzle',
      'image': 'assets/game_options/puzzle/Word Puzzle Image.jpeg',
      'screen': const WordPuzzle(),
    },
    {
      'label': 'Math Puzzle',
      'image': 'assets/game_options/puzzle/Math Puzzle Image.jpeg',
      'screen': const MathPuzzle(),
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#5ead8d"),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const CustomBackButton(clr: Colors.white),
        title: const Text(
          "Puzzle",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
        padding: const EdgeInsets.only(bottom: 25, top: 20),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  items[index]['label'],
                  style: TextStyle(
                    color: Colors.blue.shade900,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      items[index]['screen'],
                      transition: Transition.fadeIn,
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 180,
                      width: 300,
                      fit: BoxFit.cover,
                      image: AssetImage(items[index]['image']),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
