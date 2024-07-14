import 'package:flutter/material.dart';
import 'package:lyra/bottom_navigation_bar.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              color: Colors.grey[300],
              child: Center(child: Text('Profile Header')),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[300],
                    child: Icon(Icons.person, size: 50),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Benjamin Lecomte',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10),
                        Wrap(
                          spacing: 10,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Modifier'),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Partager'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Spotify'),
              trailing: Icon(Icons.add),
            ),
            Divider(),
            ListTile(
              title: Text('Amis'),
              trailing: ElevatedButton(onPressed: () {}, child: Text('Voir plus')),
            ),
            FriendItem(name: 'Clem', status: 'Online'),
            FriendItem(name: 'Clem', status: 'Online'),
            FriendItem(name: 'Clem', status: 'Online'),
            Divider(),
            ListTile(
              title: Text('Votre recap instantanée'),
              trailing: Icon(Icons.share),
            ),
            Divider(),
            ListTile(
              title: Text('Top genres'),
              trailing: ElevatedButton(onPressed: () {}, child: Text('Voir plus')),
            ),
            Wrap(
              spacing: 8.0,
              children: [
                Chip(label: Text('Pop')),
                Chip(label: Text('Hip hop')),
                Chip(label: Text('Alternative')),
                Chip(label: Text('Rap')),
                Chip(label: Text('Soundtrack')),
                Chip(label: Text('Video game music')),
              ],
            ),
            Divider(),
            ListTile(
              title: Text('Top artistes'),
              trailing: ElevatedButton(onPressed: () {}, child: Text('Voir plus')),
            ),
            ArtistItem(name: 'Flawed Man'),
            ArtistItem(name: 'Flawed Man'),
            ArtistItem(name: 'Flawed Man'),
            ArtistItem(name: 'Flawed Man'),
            Divider(),
            ListTile(
              title: Text('Top titres'),
              trailing: ElevatedButton(onPressed: () {}, child: Text('Voir plus')),
            ),
            SongItem(name: 'Mountains', artist: 'Message To Bears'),
            SongItem(name: 'Mountains', artist: 'Message To Bears'),
            SongItem(name: 'Mountains', artist: 'Message To Bears'),
            SongItem(name: 'Mountains', artist: 'Message To Bears'),
            Divider(),
            ListTile(
              title: Text('Ecoute recemment'),
              trailing: ElevatedButton(onPressed: () {}, child: Text('Voir plus')),
            ),
            RecentlyPlayedItem(name: 'Mountains', artist: 'Message To Bears', time: '20m'),
            RecentlyPlayedItem(name: 'Mountains', artist: 'Message To Bears', time: '20m'),
            RecentlyPlayedItem(name: 'Mountains', artist: 'Message To Bears', time: '20m'),
            RecentlyPlayedItem(name: 'Mountains', artist: 'Message To Bears', time: '20m'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 3, // Définissez ici l'index actuel selon votre logique
        onTap: (index) {
          // Gérez ici la navigation selon l'index
        },
      ),
    );
  }
}

class FriendItem extends StatelessWidget {
  final String name;
  final String status;

  FriendItem({required this.name, required this.status});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(name),
      subtitle: Text('100 gecs are pretty cool'),
      trailing: Text(status, style: TextStyle(color: Colors.green)),
    );
  }
}

class ArtistItem extends StatelessWidget {
  final String name;

  ArtistItem({required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(name),
    );
  }
}

class SongItem extends StatelessWidget {
  final String name;
  final String artist;

  SongItem({required this.name, required this.artist});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.music_note),
      title: Text(name),
      subtitle: Text(artist),
    );
  }
}

class RecentlyPlayedItem extends StatelessWidget {
  final String name;
  final String artist;
  final String time;

  RecentlyPlayedItem({required this.name, required this.artist, required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.music_note),
      title: Text(name),
      subtitle: Text(artist),
      trailing: Text(time),
    );
  }
}
