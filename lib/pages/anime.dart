import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Anime extends StatefulWidget {
  // final String name;
  const Anime({super.key});
  // const Anime({Key? key, required this.name}) : super(key: key);

  @override
  State<Anime> createState() => _AnimeState();
}

class _AnimeState extends State<Anime> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final name = args['name'];
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: Icon(Icons.keyboard_arrow_left_rounded, size: 40),
            ),
            Column(
              children: [
                VideoPlayer(
                  VideoPlayerController.asset(
                    "assets/videos/video.mp4",
                    viewType: VideoViewType.textureView,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
