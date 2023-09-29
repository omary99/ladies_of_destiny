import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Settings Page'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [Text('Welcome to the Settings Page')],
        ),
      ),
    );
  }
}
