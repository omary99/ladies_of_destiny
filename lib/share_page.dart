import 'package:flutter/material.dart';

class SharePage extends StatelessWidget {
  const SharePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Share Page'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [Text('Share Page')],
        ),
      ),
    );
  }
}
