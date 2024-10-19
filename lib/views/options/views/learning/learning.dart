import 'package:autism_for_kids/views/options/views/learning/arabic.dart';
import 'package:autism_for_kids/views/options/views/learning/english.dart';
import 'package:autism_for_kids/views/options/views/learning/math.dart';
import 'package:autism_for_kids/views/options/views/learning/quran/quran.dart';
import 'package:autism_for_kids/views/options/views/learning/science.dart';
import 'package:autism_for_kids/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> items = [
      {
        'label': 'Quran',
        'image': 'assets/learning_options/Quran.jpg',
        'screen': const QuranScreen(),
      },
      {
        'label': 'Math',
        'image': 'assets/learning_options/Math.jpg',
        'screen': const MathScreen(),
      },
      {
        'label': 'English',
        'image': 'assets/learning_options/English.jpg',
        'screen': const EnglishScreen(),
      },
      {
        'label': 'Science',
        'image': 'assets/learning_options/Science.jpg',
        'screen': const ScienceScreen(),
      },
      {
        'label': 'Arabic',
        'image': 'assets/learning_options/Arabic.jpeg',
        'screen': const ArabicScreen(),
      },
    ];
    return Scaffold(
      backgroundColor: HexColor("#478ecc"),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const CustomBackButton(clr: Colors.white),
        title: const Text(
          "Learning",
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
