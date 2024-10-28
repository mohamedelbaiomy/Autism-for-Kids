import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EnglishScreen extends StatefulWidget {
  const EnglishScreen({super.key});

  @override
  State<EnglishScreen> createState() => _EnglishScreenState();
}

class _EnglishScreenState extends State<EnglishScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  List<Map> items = [
    {
      'name': 'Alligator',
      'image': 'assets/learning_options/english/Animals/Alligator.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Alligator.mp3',
    },
    {
      'name': 'Butterfly',
      'image': 'assets/learning_options/english/Animals/Butterfly.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Butterfly.mp3',
    },
    {
      'name': 'Cow',
      'image': 'assets/learning_options/english/Animals/Cow.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Cow.mp3',
    },
    {
      'name': 'Dolphin',
      'image': 'assets/learning_options/english/Animals/Dolphin.webp',
      'sound': 'learning_options/english/Animals/Sounds/Dolphin.mp3',
    },
    {
      'name': 'Donkey',
      'image': 'assets/learning_options/english/Animals/Donkey.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Donkey.mp3',
    },
    {
      'name': 'Elephant',
      'image': 'assets/learning_options/english/Animals/Elephant.webp',
      'sound': 'learning_options/english/Animals/Sounds/Elephant.mp3',
    },
    {
      'name': 'Fox',
      'image': 'assets/learning_options/english/Animals/Fox.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Fox.mp3',
    },
    {
      'name': 'Frog',
      'image': 'assets/learning_options/english/Animals/Frog.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Frog.mp3',
    },
    {
      'name': 'Giraffe',
      'image': 'assets/learning_options/english/Animals/Giraffe.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Giraffe.mp3',
    },
    {
      'name': 'Horse',
      'image': 'assets/learning_options/english/Animals/Horse.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Horse.mp3',
    },
    {
      'name': 'Octopus',
      'image': 'assets/learning_options/english/Animals/Octopus.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Octopus.mp3',
    },
    {
      'name': 'Ostrich',
      'image': 'assets/learning_options/english/Animals/Ostrich.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Ostrich.mp3',
    },
    {
      'name': 'Owl',
      'image': 'assets/learning_options/english/Animals/Owl.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Owl.mp3',
    },
    {
      'name': 'Panda',
      'image': 'assets/learning_options/english/Animals/Panda.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Panda.mp3',
    },
    {
      'name': 'Parrot',
      'image': 'assets/learning_options/english/Animals/Parrot.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Parrot.mp3',
    },
    {
      'name': 'Rhino',
      'image': 'assets/learning_options/english/Animals/Rhino.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Rhino.mp3',
    },
    {
      'name': 'Sheep',
      'image': 'assets/learning_options/english/Animals/Sheep.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Sheep.mp3',
    },
    {
      'name': 'Squirrel',
      'image': 'assets/learning_options/english/Animals/Squirrel.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Squirrel.mp3',
    },
    {
      'name': 'Tiger',
      'image': 'assets/learning_options/english/Animals/Tiger.webp',
      'sound': 'learning_options/english/Animals/Sounds/Tiger.mp3',
    },
    {
      'name': 'Turtle',
      'image': 'assets/learning_options/english/Animals/Turtle.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Turtle_.mp3',
    },
    {
      'name': 'Zebra',
      'image': 'assets/learning_options/english/Animals/Zebra.jpeg',
      'sound': 'learning_options/english/Animals/Sounds/Zebra.mp3',
    },
    {
      'name': 'Baby blue',
      'image': 'assets/learning_options/english/Colors/Baby Blue.png',
      'sound': 'learning_options/english/Colors/Sounds/Baby blue.mp3',
    },
    {
      'name': 'Black',
      'image': 'assets/learning_options/english/Colors/Black.png',
      'sound': 'learning_options/english/Colors/Sounds/Black.mp3',
    },
    {
      'name': 'Blue',
      'image': 'assets/learning_options/english/Colors/Blue.png',
      'sound': 'learning_options/english/Colors/Sounds/Blue.mp3',
    },
    {
      'name': 'Brown',
      'image': 'assets/learning_options/english/Colors/Brown.png',
      'sound': 'learning_options/english/Colors/Sounds/Brown.mp33',
    },
    {
      'name': 'Green',
      'image': 'assets/learning_options/english/Colors/Green.png',
      'sound': 'learning_options/english/Colors/Sounds/Green.mp3',
    },
    {
      'name': 'Grey',
      'image': 'assets/learning_options/english/Colors/Grey.png',
      'sound': 'learning_options/english/Colors/Sounds/Grey.mp3',
    },
    {
      'name': 'Orange',
      'image': 'assets/learning_options/english/Colors/Orange.png',
      'sound': 'learning_options/english/Colors/Sounds/Orange.mp3',
    },
    {
      'name': 'Purple',
      'image': 'assets/learning_options/english/Colors/Purple.png',
      'sound': 'learning_options/english/Colors/Sounds/Purple.mp3',
    },
    {
      'name': 'Red',
      'image': 'assets/learning_options/english/Colors/Red.png',
      'sound': 'learning_options/english/Colors/Sounds/Red.mp3',
    },
    {
      'name': 'White',
      'image': 'assets/learning_options/english/Colors/White.png',
      'sound': 'learning_options/english/Colors/Sounds/White.mp3',
    },
    {
      'name': 'Yellow',
      'image': 'assets/learning_options/english/Colors/Yellow.png',
      'sound': 'learning_options/english/Colors/Sounds/Yellow.mp3',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#2bb38a"),
      appBar: AppBar(
        backgroundColor: HexColor("#2bb38a"),
        title: const Text("English"),
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
