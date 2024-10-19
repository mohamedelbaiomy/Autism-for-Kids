import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:video_player/video_player.dart';

class VideoDetails extends StatefulWidget {
  final String storyVideo;
  final String color;
  const VideoDetails(
      {super.key, required this.storyVideo, required this.color});

  @override
  State<VideoDetails> createState() => _VideoDetailsState();
}

class _VideoDetailsState extends State<VideoDetails> {
  FlickManager? flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController: VideoPlayerController.asset(widget.storyVideo),
    );
  }

  @override
  void dispose() {
    flickManager!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(widget.color),
      appBar: AppBar(
        backgroundColor: HexColor(widget.color),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: FlickVideoPlayer(flickManager: flickManager!),
        ),
      ),
    );
  }
}
