import 'package:autism_for_kids/views/options/views/stories/model/story_model.dart';
import 'package:autism_for_kids/views/options/views/stories/video_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../../../widgets/back_button.dart';

class StoryDetails extends StatelessWidget {
  final Story story;
  const StoryDetails({super.key, required this.story});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(story.color),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const CustomBackButton(clr: Colors.white),
        title: Text(
          story.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 1,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                height: 230,
                width: 300,
                fit: BoxFit.cover,
                image: AssetImage(story.partImage),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.5,
              height: 300,
              child: ListView.builder(
                itemCount: story.parts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(
                          VideoDetails(
                            storyVideo: story.parts[index].partVideo,
                            color: story.color,
                          ),
                          transition: Transition.fadeIn,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white60,
                        minimumSize:
                            Size(MediaQuery.sizeOf(context).width * 0.1, 40),
                      ),
                      child: Text(
                        story.parts[index].partNumber,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
