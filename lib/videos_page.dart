import 'package:flutter/material.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Video Page'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [Text('Welcome To The Video Page')],
        ),
      ),
    );
  }
}
