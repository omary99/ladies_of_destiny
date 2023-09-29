import 'package:flutter/material.dart';

class LadiesOfDestinyTopics extends StatelessWidget {
  const LadiesOfDestinyTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Ladies of Destiny Topics'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [Text('Ladies Of Destiny Topics')],
        ),
      ),
    );
  }
}
