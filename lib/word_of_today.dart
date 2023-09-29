import 'package:flutter/material.dart';

class WordOfToday extends StatelessWidget {
  const WordOfToday({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Word Of Today'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [Text('Welcome To The Word Of Today Page')],
        ),
      ),
    );
  }
}
