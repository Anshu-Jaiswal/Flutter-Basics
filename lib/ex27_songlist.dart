import 'package:flutter/material.dart';

class Song {
  String name;
  bool isFav;

  Song(this.name, this.isFav);
}

class Ex27 extends StatelessWidget {
  const Ex27({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final songs = [
      Song("Song1", false),
      Song("Song1", true),
      Song("Song1", false),
      Song("Song1", true),
    ];
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return FavSongTile(songs[index]);
        },
        itemCount: songs.length,
      ),
    );
  }
}

class FavSongTile extends StatefulWidget {
  const FavSongTile(this.song, {Key? key}) : super(key: key);
  final Song song;

  @override
  State<FavSongTile> createState() => _FavSongTileState();
}

class _FavSongTileState extends State<FavSongTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.black12,
      title: Text(widget.song.name), // widget.song to access parent class variable
      trailing: IconButton(
        icon: Icon(
          widget.song.isFav ? Icons.favorite : Icons.favorite_border,
          color: Colors.red,
        ),
        onPressed: () {
          setState(() {
            widget.song.isFav = !widget.song.isFav;
          });
        },
      ),
    );
  }
}
