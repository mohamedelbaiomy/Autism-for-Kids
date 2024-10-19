import 'package:autism_for_kids/views/options/views/stories/model/story_model.dart';
import 'package:autism_for_kids/views/options/views/stories/story_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../widgets/back_button.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Story> getAllStories = getStories();
    return Scaffold(
      backgroundColor: HexColor("#87bafbfd"),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const CustomBackButton(clr: Colors.white),
        title: const Text(
          "Stories",
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
        itemCount: getAllStories.length,
        padding: const EdgeInsets.only(bottom: 25, top: 20),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Text(
                  getAllStories[index].name,
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(
                      StoryDetails(story: getAllStories[index]),
                      transition: Transition.fadeIn,
                    );
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image(
                      height: 180,
                      width: 300,
                      fit: BoxFit.cover,
                      image: AssetImage(getAllStories[index].image),
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
