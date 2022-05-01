import 'package:flutter/material.dart';
import 'package:meal_app/constants/const_texts.dart';
import 'package:meal_app/constants/const_theme_data.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// ignore: must_be_immutable
class VideoPlayer extends StatefulWidget {
  VideoPlayer({Key? key, required this.videoUrl}) : super(key: key);

  String videoUrl;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController _controller;
  MealDetailsPageTexts texts = MealDetailsPageTexts();

  @override
  void initState() {
    super.initState();
    var link = YoutubePlayer.convertUrlToId(widget.videoUrl);
    _controller = YoutubePlayerController(
      initialVideoId: link.toString(),
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: true,
        
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Center(
            child: Text(
              texts.tutorialVideo,
              style: Theme.of(context).textTheme.headline5!.apply(
                    color: Colors.black,
                  ),
            ),
          ),
          const SizedBox(height: 20),
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: ProgressBarColors(
                playedColor: appColors.appColor,
                handleColor: appColors.appColor,
              ),
              onReady: () {
                _controller.addListener(() {});
              },
            ),
          ),
        ],
      ),
    );
  }
}
