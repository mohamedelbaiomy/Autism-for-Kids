import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ArabicScreen extends StatefulWidget {
  const ArabicScreen({super.key});

  @override
  State<ArabicScreen> createState() => _ArabicScreenState();
}

class _ArabicScreenState extends State<ArabicScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  List<Map> items = [
    {
      'name': 'باذنجان',
      'image': 'assets/learning_options/arabic/Vegetables/باذنجان.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/باذنجان.mp3',
    },
    {
      'name': 'بروكلي',
      'image': 'assets/learning_options/arabic/Vegetables/بروكلي.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/بروكولي.mp3',
    },
    {
      'name': 'بسلة',
      'image': 'assets/learning_options/arabic/Vegetables/بسلة.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/بسلة.mp3',
    },
    {
      'name': 'بصل',
      'image': 'assets/learning_options/arabic/Vegetables/بصل.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/بصل.mp3',
    },
    {
      'name': 'بطاطس',
      'image': 'assets/learning_options/arabic/Vegetables/بطاطس.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/بطاطس.mp3',
    },
    {
      'name': 'بنجر',
      'image': 'assets/learning_options/arabic/Vegetables/بنجر.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/بنجر.mp3',
    },
    {
      'name': 'ثوم',
      'image': 'assets/learning_options/arabic/Vegetables/ثوم.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/ثوم.mp3',
    },
    {
      'name': 'خس',
      'image': 'assets/learning_options/arabic/Vegetables/خس.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/خس.mp3',
    },
    {
      'name': 'خيار',
      'image': 'assets/learning_options/arabic/Vegetables/خيار.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/خيار.mp3',
    },
    {
      'name': 'زيتون',
      'image': 'assets/learning_options/arabic/Vegetables/زيتون.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/زيتون.mp3',
    },
    {
      'name': 'طماطم',
      'image': 'assets/learning_options/arabic/Vegetables/طماطم.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/طماطم.mp3',
    },
    {
      'name': 'فجل',
      'image': 'assets/learning_options/arabic/Vegetables/فجل.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/فجل.mp3',
    },
    {
      'name': 'فلفل احمر',
      'image': 'assets/learning_options/arabic/Vegetables/فلفل احمر.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/فلفل أحمر.mp3',
    },
    {
      'name': 'كرنب',
      'image': 'assets/learning_options/arabic/Vegetables/كرنب.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/كرنب.mp3',
    },
    {
      'name': 'نعناع',
      'image': 'assets/learning_options/arabic/Vegetables/نعناع.jpeg',
      'sound': 'learning_options/arabic/Vegetables/sounds/نعناع.mp3',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#fcf5d4"),
      appBar: AppBar(
        backgroundColor: HexColor("#fcf5d4"),
        title: const Text("Arabic"),
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
