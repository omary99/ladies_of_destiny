import "package:flutter/material.dart";
import "package:ladies_of_destiny/drawer.dart";

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.view_module,
            color: Colors.blueGrey[300],
          ),
          onPressed: () {},
        ),
        elevation: 0.0,
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.location_searching_outlined,
                  color: Colors.blueGrey[300],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.blueGrey[300],
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.alarm,
                  color: Colors.blueGrey[300],
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Featured Events',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'View all',
                    style: TextStyle(fontSize: 15),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 400,
                  color: Colors.white,
                  child: Column(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Stack(
                            children: [
                              Container(
                                color: Colors.pink,
                                height: 250,
                                width: 500,
                                child: Image.asset(
                                  'assets/images/events.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
