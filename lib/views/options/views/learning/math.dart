import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MathScreen extends StatefulWidget {
  const MathScreen({super.key});

  @override
  State<MathScreen> createState() => _MathScreenState();
}

class _MathScreenState extends State<MathScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  List<Map> items = [
    {
      'name': 'واحد',
      'image': 'assets/learning_options/math/الأرقام/واحد.webp',
      'sound': 'learning_options/math/الأرقام/Sounds/واحد.mp3',
    },
    {
      'name': 'اثنان',
      'image': 'assets/learning_options/math/الأرقام/اثنان.webp',
      'sound': 'learning_options/math/الأرقام/Sounds/اثنان.mp3',
    },
    {
      'name': 'ثلاثه',
      'image': 'assets/learning_options/math/الأرقام/ثلاثة.png',
      'sound': 'learning_options/math/الأرقام/Sounds/ثلاثة.mp3',
    },
    {
      'name': 'اربعه',
      'image': 'assets/learning_options/math/الأرقام/أربعة.png',
      'sound': 'learning_options/math/الأرقام/Sounds/أربعة.mp3',
    },
    {
      'name': 'خمسه',
      'image': 'assets/learning_options/math/الأرقام/خمسة.png',
      'sound': 'learning_options/math/الأرقام/Sounds/خمسة.mp3',
    },
    {
      'name': 'سته',
      'image': 'assets/learning_options/math/الأرقام/ستة.png',
      'sound': 'learning_options/math/الأرقام/Sounds/ستة.mp3',
    },
    {
      'name': 'سبعه',
      'image': 'assets/learning_options/math/الأرقام/سبعة.png',
      'sound': 'learning_options/math/الأرقام/Sounds/سبعة.mp3',
    },
    {
      'name': 'ثمانيه',
      'image': 'assets/learning_options/math/الأرقام/ثمانية.png',
      'sound': 'learning_options/math/الأرقام/Sounds/ثمانية.mp3',
    },
    {
      'name': 'تسعه',
      'image': 'assets/learning_options/math/الأرقام/تسعة.png',
      'sound': 'learning_options/math/الأرقام/Sounds/تسعة.mp3',
    },
    {
      'name': 'عشره',
      'image': 'assets/learning_options/math/الأرقام/عشرة.png',
      'sound': 'learning_options/math/الأرقام/Sounds/عشرة.mp3',
    },
    {
      'name': 'دائره',
      'image': 'assets/learning_options/math/الأشكال/دائرة.png',
      'sound': 'learning_options/math/الأشكال/Sounds/دائرة.mp3',
    },
    {
      'name': 'قلب',
      'image': 'assets/learning_options/math/الأشكال/قلب.png',
      'sound': 'learning_options/math/الأشكال/Sounds/قلب.mp3',
    },
    {
      'name': 'مثلث',
      'image': 'assets/learning_options/math/الأشكال/مثلث.png',
      'sound': 'learning_options/math/الأشكال/Sounds/مثلث.mp3',
    },
    {
      'name': 'مربع',
      'image': 'assets/learning_options/math/الأشكال/مربع.png',
      'sound': 'learning_options/math/الأشكال/Sounds/مربع.mp3',
    },
    {
      'name': 'مستطيل',
      'image': 'assets/learning_options/math/الأشكال/مستطيل.png',
      'sound': 'learning_options/math/الأشكال/Sounds/مستطيل.mp3',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#aeebde"),
      appBar: AppBar(
        backgroundColor: HexColor("#aeebde"),
        title: const Text("Math"),
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
                      fontSize: 20,
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
