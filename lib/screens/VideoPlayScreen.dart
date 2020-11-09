import 'package:flutter/material.dart';
import 'package:tailorapp/models/videos_list_model.dart';
import 'package:tailorapp/widgets/MyCustomText.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayScreen extends StatefulWidget {
  VideoPlayScreen({this.videoItem});
  final VideoItem videoItem;
  @override
  _VideoPlayScreenState createState() => _VideoPlayScreenState();
}

class _VideoPlayScreenState extends State<VideoPlayScreen> {
  YoutubePlayerController _youtubePlayerController;
  bool _isPlayerReady;

  @override
  void initState() {
    super.initState();
    _isPlayerReady = false;
    _youtubePlayerController = YoutubePlayerController(
        initialVideoId: widget.videoItem.video.resourceId.videoId,
        flags: YoutubePlayerFlags(mute: false, autoPlay: true))
      ..addListener(_listener);
  }

  void _listener() {
    if (_isPlayerReady &&
        mounted &&
        !_youtubePlayerController.value.isFullScreen) {}
  }

  @override
  void deactivate() {
    _youtubePlayerController.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _youtubePlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (BuildContext context, Orientation orientation) {
        if (orientation == Orientation.portrait) {
          return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colors.white),
              title: MyCustomText(
                  text: widget.videoItem.video.title,
                  textOverflow: TextOverflow.ellipsis,
                  fontSize: 16.0,
                  fontFamily: "Montserrat",
                  color: Colors.white,
                  fontWeight: FontWeight.w800),
            ),
            body: Center(
              child: Container(
                child: YoutubePlayer(
                  controller: _youtubePlayerController,
                  showVideoProgressIndicator: true,
                  onReady: () {
                    print("Player is ready");
                    _isPlayerReady = true;
                  },
                ),
              ),
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: Container(
                child: YoutubePlayer(
                  controller: _youtubePlayerController,
                  showVideoProgressIndicator: true,
                  onReady: () {
                    print("Player is ready");
                    _isPlayerReady = true;
                  },
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
