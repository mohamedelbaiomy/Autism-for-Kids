import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ScienceScreen extends StatefulWidget {
  const ScienceScreen({super.key});

  @override
  State<ScienceScreen> createState() => _ScienceScreenState();
}

class _ScienceScreenState extends State<ScienceScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  List<Map> items = [
    {
      'name': 'شمس',
      'image': 'assets/learning_options/science/صور أخرى/شمس.png',
      'sound': 'learning_options/science/صور أخرى/Sounds/شمس.mp3',
    },
    {
      'name': 'قمر',
      'image': 'assets/learning_options/science/صور أخرى/قمر.jpg',
      'sound': 'learning_options/science/صور أخرى/Sounds/قمر.mp3',
    },
    {
      'name': 'كوكب الأرض',
      'image': 'assets/learning_options/science/صور أخرى/كوكب الأرض.jpg',
      'sound': 'learning_options/science/صور أخرى/Sounds/كوكب الأرض.mp3',
    },
    {
      'name': 'مياه',
      'image': 'assets/learning_options/science/صور أخرى/مياه.png',
      'sound': 'learning_options/science/صور أخرى/Sounds/مياه.mp3',
    },
    {
      'name': 'نبتة',
      'image': 'assets/learning_options/science/صور أخرى/نبتة.png',
      'sound': 'learning_options/science/صور أخرى/Sounds/نبتة.mp3',
    },
    {
      'name': 'الخريف',
      'image': 'assets/learning_options/science/فصول السنة/الخريف.png',
      'sound': 'learning_options/science/فصول السنة/Sounds/الخريف.mp3',
    },
    {
      'name': 'الربيع',
      'image': 'assets/learning_options/science/فصول السنة/الربيع.png',
      'sound': 'learning_options/science/فصول السنة/Sounds/الربيع.mp3',
    },
    {
      'name': 'الشتاء',
      'image': 'assets/learning_options/science/فصول السنة/الشتاء.png',
      'sound': 'learning_options/science/فصول السنة/Sounds/الشتاء.mp3',
    },
    {
      'name': 'الصيف',
      'image': 'assets/learning_options/science/فصول السنة/الصيف.png',
      'sound': 'learning_options/science/فصول السنة/Sounds/الصيف.mp3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#fab152"),
      appBar: AppBar(
        backgroundColor: HexColor("#fab152"),
        title: const Text("Science"),
      ),
      body: GridView.builder(
        itemCount: items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () async {
                await _audioPlayer.stop();
                await _audioPlayer.play(AssetSource(items[index]['sound']));
              },
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 150,
                      width: 150,
                      fit: BoxFit.fill,
                      image: AssetImage(
                        items[index]['image'],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    items[index]['name'],
                    style: const TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
