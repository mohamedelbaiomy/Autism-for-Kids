import 'package:autism_for_kids/views/options/views/learning/quran/sound_button.dart';
import 'package:autism_for_kids/widgets/back_button.dart';
import 'package:flutter/material.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> items = [
      {
        'name': 'سورة الإخلاص',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A5%D8%AE%D9%84%D8%A7%D8%B5.mp3',
        'numberOfVerses': '4',
        'm': '1',
      },
      {
        'name': 'سورة الفلق',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%81%D9%84%D9%82.mp3',
        'numberOfVerses': '5',
        'm': '2',
      },
      {
        'name': 'سورة الناس',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%86%D8%A7%D8%B3.mp3',
        'numberOfVerses': '6',
        'm': '3',
      },
      {
        'name': 'سورة الكافرون',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%83%D8%A7%D9%81%D8%B1%D9%88%D9%86.mp3',
        'numberOfVerses': '6',
        'm': '4',
      },
      {
        'name': 'سورة النصر',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%86%D8%B5%D8%B1.mp3',
        'numberOfVerses': '3',
        'm': '5',
      },
      {
        'name': 'سورة المسد',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%85%D8%B3%D8%AF.mp3',
        'numberOfVerses': '5',
        'm': '6',
      },
      {
        'name': 'سورة قريش',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D9%82%D8%B1%D9%8A%D8%B4.mp3',
        'numberOfVerses': '4',
        'm': '7',
      },
      {
        'name': 'سورة الماعون',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%85%D8%A7%D8%B9%D9%88%D9%86.mp3',
        'numberOfVerses': '7',
        'm': '8',
      },
      {
        'name': 'سورة الكوثر',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%83%D9%88%D8%AB%D8%B1.mp3',
        'numberOfVerses': '3',
        'm': '9',
      },
      {
        'name': 'سورة العصر',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B9%D8%B5%D8%B1.mp3',
        'numberOfVerses': '3',
        'm': '10',
      },
      {
        'name': 'سورة الهمزه',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%87%D9%85%D8%B2%D8%A9.mp3',
        'numberOfVerses': '9',
        'm': '11',
      },
      {
        'name': 'سورة الفيل',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%81%D9%8A%D9%84.mp3',
        'numberOfVerses': '5',
        'm': '12',
      },
      {
        'name': 'سورة القارعة',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%82%D8%A7%D8%B1%D8%B9%D8%A9.mp3',
        'numberOfVerses': '11',
        'm': '13',
      },
      {
        'name': 'سورة التكاثر',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AA%D9%83%D8%A7%D8%AB%D8%B1.mp3',
        'numberOfVerses': '8',
        'm': '14',
      },
      {
        'name': 'سورة الزلزلة',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B2%D9%84%D8%B2%D9%84%D8%A9.mp3',
        'numberOfVerses': '8',
        'm': '15',
      },
      {
        'name': 'سورة العاديات',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B9%D8%A7%D8%AF%D9%8A%D8%A7%D8%AA.mp3',
        'numberOfVerses': '11',
        'm': '16',
      },
      {
        'name': 'سورة القدر',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%82%D8%AF%D8%B1.mp3',
        'numberOfVerses': '5',
        'm': '17',
      },
      {
        'name': 'سورة البينة',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A8%D9%8A%D9%86%D8%A9.mp3',
        'numberOfVerses': '8',
        'm': '18',
      },
      {
        'name': 'سورة التين',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%AA%D9%8A%D9%86.mp3',
        'numberOfVerses': '8',
        'm': '19',
      },
      {
        'name': 'سورة العلق',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B9%D9%84%D9%82.mp3',
        'numberOfVerses': '19',
        'm': '20',
      },
      {
        'name': 'سورة الضحى',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B6%D8%AD%D9%89.mp3',
        'numberOfVerses': '11',
        'm': '21',
      },
      {
        'name': 'سورة الشرح',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B4%D8%B1%D8%AD.mp3',
        'numberOfVerses': '8',
        'm': '22',
      },
      {
        'name': 'سورة الشمس',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B4%D9%85%D8%B3.mp3',
        'numberOfVerses': '15',
        'm': '23',
      },
      {
        'name': 'سورة الليل',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%84%D9%8A%D9%84.mp3',
        'numberOfVerses': '21',
        'm': '24',
      },
      {
        'name': 'سورة البلد',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A8%D9%84%D8%AF.mp3',
        'numberOfVerses': '20',
        'm': '25',
      },
      {
        'name': 'سورة الفجر',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D9%81%D8%AC%D8%B1.mp3',
        'numberOfVerses': '30',
        'm': '26',
      },
      {
        'name': 'سورة الغاشية',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%BA%D8%A7%D8%B4%D9%8A%D8%A9.mp3',
        'numberOfVerses': '26',
        'm': '27',
      },
      {
        'name': 'سورة الاعلى',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%A3%D8%B9%D9%84%D9%89.mp3',
        'numberOfVerses': '19',
        'm': '28',
      },
      {
        'name': 'سورة الطارق',
        'sound':
            'https://github.com/mohamedelbaiomy/Autism-for-Kids/raw/refs/heads/master/assets/%D8%B3%D9%88%D8%B1%20%D8%A7%D9%84%D9%82%D8%B1%D8%A2%D9%86/%D8%B3%D9%88%D8%B1%D8%A9%20%D8%A7%D9%84%D8%B7%D8%A7%D8%B1%D9%82.mp3',
        'numberOfVerses': '17',
        'm': '29',
      },
      {
        'name': 'سورة قريش',
        'sound': '',
        'numberOfVerses': '4',
        'm': '30',
      },
      {
        'name': 'سورة قريش',
        'sound': '',
        'numberOfVerses': '4',
        'm': '31',
      },
      {
        'name': 'سورة قريش',
        'sound': '',
        'numberOfVerses': '4',
        'm': "32",
      },
      {
        'name': 'سورة قريش',
        'sound': '',
        'numberOfVerses': '4',
        'm': '33',
      },
      {
        'name': 'سورة قريش',
        'sound': '',
        'numberOfVerses': '4',
        'm': '34',
      },
      {
        'name': 'سورة قريش',
        'sound': '',
        'numberOfVerses': '4',
        'm': '35',
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
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.only(left: 30, right: 50, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("عدد اياتها"),
                Text("اسم السورة"),
                Text("م"),
              ],
            ),
          ),
          SizedBox(
            height: 600,
            width: double.infinity,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50),
                  child: Row(
                    children: [
                      Text(items[index]['numberOfVerses']),
                      const Spacer(),
                      SoundButton(
                        soundUrl: items[index]['sound'],
                        buttonText: items[index]['name'],
                      ),
                      const Spacer(),
                      Text(items[index]['m']),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
