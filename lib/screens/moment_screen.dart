import 'package:flutter/material.dart';
import 'package:snk_app/models/moment.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MomentScreen extends StatefulWidget {

  final Moment _moment;

  const MomentScreen(this._moment, {super.key});

  @override
  State<MomentScreen> createState() => _MomentScreenState();
}

class _MomentScreenState extends State<MomentScreen> {
  
  late YoutubePlayerController _controller;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget._moment.videoUrl,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF403535),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
        title: Text("Momento: ${widget._moment.title}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: "Ditty"
          ),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24
          ),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text(widget._moment.title, 
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              Image.asset(widget._moment.imagePath,
                height: 230,
                width: 230,
              ),
              Text(widget._moment.description,
                style: TextStyle(
                  fontSize: 16
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}