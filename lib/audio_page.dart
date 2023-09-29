import 'package:flutter/material.dart';

class AudioPage extends StatelessWidget {
  const AudioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Audio Page'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [Text('Welcome To The Audio Page')],
        ),
      ),
    );
  }
}
