import 'package:autism_for_kids/widgets/back_button.dart';
import 'package:flutter/material.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> items = [
      {
        'name': 'سورة الفاتحة',
        'sound': '',
        'numberOfVerses': '7',
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
    );
  }
}