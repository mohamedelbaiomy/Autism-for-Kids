import 'package:audioplayers/audioplayers.dart';
import 'package:autism_for_kids/widgets/back_button.dart';
import 'package:flutter/material.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> items = [
      {
        'name': 'سورة الفاتحة',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%81%D8%A7%D8%AA%D8%AD%D8%A9.mp3',
        'numberOfVerses': '7',
        'm': '1',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        leading: const CustomBackButton(clr: Colors.black),
        centerTitle: true,
        title: const Text(
          "القرءان الكريم",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Text("عدد اياتها"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 80),
                child: Text("اسم السورة"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text("م"),
              ),
            ],
          ),
          SizedBox(
            height: 600,
            width: double.infinity,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(items[index]['numberOfVerses']),
                    ElevatedButton(
                      onPressed: () async {
                        final player = AudioPlayer();
                        await player.play(
                          UrlSource(items[index]['sound']),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepPurple,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(items[index]['name']),
                    ),
                    Text(items[index]['m']),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
