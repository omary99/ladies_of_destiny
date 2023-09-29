import 'package:flutter/material.dart';
import 'package:ladies_of_destiny/drawer.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[300],
        title: const Text("Ladies of Destiny"),
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80.0,
            backgroundImage: AssetImage('assets/images/chichi.jpg'),
          ),
          Center(
            child: Text(
              'Ladies Of Destiny',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.blueGrey,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Add any other content you want to display here
        ],
      ),
    );
  }
}
