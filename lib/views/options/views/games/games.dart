import 'package:autism_for_kids/views/options/views/games/2048/game.dart';
import 'package:autism_for_kids/views/options/views/games/coloring.dart';
import 'package:autism_for_kids/views/options/views/games/speed_game.dart';
import 'package:autism_for_kids/views/options/views/games/ninja.dart';
import 'package:autism_for_kids/views/options/views/games/piano.dart';
import 'package:autism_for_kids/views/options/views/games/puzzle/puzzle.dart';
import 'package:autism_for_kids/views/options/views/games/random_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../widgets/back_button.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        'label': 'Animal Ninja Game',
        'image': 'assets/game_options/Ninja.jpeg',
        'screen': const Ninja(),
      },
      {
        'label': 'Puzzle',
        'image': 'assets/game_options/Puzzle.jpeg',
        'screen': const Puzzle(),
      },
      {
        'label': 'Piano',
        'image': 'assets/game_options/Piano.jpeg',
        'screen': const Piano(),
      },
      {
        'label': 'Guess the Number',
        'image': 'assets/game_options/Guess the number.jpeg',
        'screen': const RandomAppScreen(),
      },
      {
        'label': 'Speed Game',
        'image': 'assets/options/Games.jpg',
        'screen': const SpeedGame(),
      },
      {
        'label': 'Coloring',
        'image': 'assets/game_options/Coloring.jpeg',
        'screen': const Coloring(),
      },
      {
        'label': '2048 Game',
        'image': 'assets/options/Games.jpg',
        'screen': const ProviderScope(
          child: Game(),
        ),
      },
    ];
    return Scaffold(
      backgroundColor: HexColor("#57fad9"),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: CustomBackButton(clr: HexColor("#071b42")),
        title: Text(
          "Games",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: HexColor("#080000"),
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
