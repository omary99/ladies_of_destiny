import 'package:flutter/material.dart';
import 'package:ladies_of_destiny/drawer.dart';
import 'package:ladies_of_destiny/home_content.dart';
import 'package:ladies_of_destiny/navigations/discover_page.dart';
import 'package:ladies_of_destiny/navigations/explore_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  final tabs = [
    const Center(child: HomeContent()),
    const DiscoverPage(),
    const Center(
      child: Text(
        'Events',
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
    ),
    const ExplorePage(),
    const Center(
      child: Text(
        'Stories',
        style: TextStyle(color: Colors.black, fontSize: 30),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: const NavBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: IndexedStack(
                index: _currentIndex,
                    children: tabs,
              ))
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items:  [
              BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: 'Home',
                backgroundColor: Colors.blueGrey[300],
              ),
              BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.explore_outlined,
                    color: Colors.white,
                  ),
                  label: 'Discover',
                backgroundColor: Colors.blueGrey[300],

              ),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.event),
                  label: 'Events',
                backgroundColor: Colors.blueGrey[300],
              ),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.explore),
                  label: 'Explore',
                backgroundColor: Colors.blueGrey[300],
              ),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.camera_enhance),
                  label: 'Stories',
                backgroundColor: Colors.blueGrey[300],
              ),
            ],
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ));
  }
}
