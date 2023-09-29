import 'package:flutter/material.dart';
import 'package:ladies_of_destiny/event_page.dart';
import 'package:ladies_of_destiny/ladies_of_destiny_topics.dart';
import 'package:ladies_of_destiny/settings_page.dart';
import 'package:ladies_of_destiny/share_page.dart';
import 'package:ladies_of_destiny/videos_page.dart';
import 'package:ladies_of_destiny/audio_page.dart';
import 'package:ladies_of_destiny/word_of_today.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Chichidolls'),
            accountEmail: Text('chichidolllstz@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blueGrey,
              backgroundImage: AssetImage('assets/images/profile_image.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              image: DecorationImage(
                image: AssetImage('assets/images/lemon_glass.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
           ListTile(
            leading: const Icon(Icons.event),
            title: const Text('Events'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const EventsPage(),
            ));
          },
          ),
           ListTile(
            leading: const Icon(Icons.video_chat),
            title: const Text('Videos'),
             onTap: () {
               Navigator.of(context).push(MaterialPageRoute(
                 builder: (context) => const VideoPage(),
               ));
             },

          ),
            ListTile(
            leading: const Icon(Icons.audio_file),
            title: const Text('Audio'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const AudioPage(),
                ));
              },

          ),
            ListTile(
            leading: const Icon(Icons.topic),
            title: const Text('Ladies of destiny topics'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LadiesOfDestinyTopics(),
                ));
              },

          ),
            ListTile(
            leading: const Icon(Icons.today),
            title: const Text('Word of Today'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const WordOfToday(),
                ));
              },
          ),
          Container(
            color: Colors.blueGrey,
            child: const Divider(height: 5.0,),
          ),
          ListTile(
            leading: const Icon(Icons.search),
            title: const Text('Search'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SharePage(),
              ));
            },
          ),
            ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Share'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SharePage(),
                ));
              },
          ),
            ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const SettingsPage(),
                ));
              },
          ),
        ],
      ),
    );
  }
}
