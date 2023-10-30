import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:farceur/core/utils/loading_widget.dart';
import 'package:flutter/cupertino.dart';

class Player extends StatefulWidget {
  final String? url;
  const Player({super.key, this.url});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late VideoPlayerController _videoPlayerController;

  CustomVideoPlayerController? _customVideoPlayerController;

  final CustomVideoPlayerSettings _customVideoPlayerSettings =
  const CustomVideoPlayerSettings(showSeekButtons: true,showFullscreenButton: false,);
  bool isLoading = true;
  void initiateVideoPlayer(String? videoFile) {
    String videoUrl =
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";

    if (videoFile != null && videoFile.isNotEmpty) {
      _videoPlayerController = VideoPlayerController.networkUrl(
        Uri.parse(videoFile),

      )..initialize().then((value) => setState(() {
        isLoading=false;
      }));

      _customVideoPlayerController = CustomVideoPlayerController(
        context: context,

        videoPlayerController: _videoPlayerController,
        customVideoPlayerSettings: _customVideoPlayerSettings,
      );
    }
  }

  @override
  void initState() {
    String videoUrl =
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4";
    // initiateVideoPlayer(videoUrl);

    initiateVideoPlayer(widget.url);

    super.initState();
  }


  @override
  void dispose() {
    _customVideoPlayerController?.dispose();
    _videoPlayerController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   isLoading==true?AspectRatio(aspectRatio: 16/9,child: LoadingWidget()):Center(
      child: AspectRatio(
        aspectRatio: 16/9,

        child: CustomVideoPlayer(
            customVideoPlayerController: _customVideoPlayerController!),
      ),
    );;
  }
}
