import 'package:autism_for_kids/views/options/views/games/games.dart';
import 'package:autism_for_kids/views/options/views/learning/learning.dart';
import 'package:autism_for_kids/views/options/views/stories/stories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class OptionsScreen extends StatelessWidget {
  final String name;
  const OptionsScreen({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        'label': 'Learning',
        'image': 'assets/options/Learning.jpg',
        'screen': const LearningScreen(),
      },
      {
        'label': 'Games',
        'image': 'assets/options/Games.jpg',
        'screen': const GamesScreen(),
      },
      {
        'label': 'Stories',
        'image': 'assets/options/Stories.jpg',
        'screen': const StoriesScreen(),
      },
    ];

    return Scaffold(
      backgroundColor: HexColor("#478ecc"),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        // title: Text(
        //   "Hi $name",
        //   style: const TextStyle(
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 1,
        //   ),
        // ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: items.length,
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
