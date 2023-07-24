import 'package:flutter/material.dart';
import 'package:flutter_basic/ex31/album.dart';
import 'package:flutter_basic/ex31/downloading_albums_from_internet.dart';

// step 3 FutureBuilder to show future data in UI form that is downloaded from internet.

class AlbumPage extends StatelessWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Albums"),
      ),
      body: FutureBuilder<List<Album>>(
        future: getAlbums(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.waiting:
            case ConnectionState.active:
              return Center(child: CircularProgressIndicator());

            case ConnectionState.done:
              if (snapshot.hasError || !snapshot.hasData) {
                return Center(
                    child: Text(
                  "Some Error",
                  style: TextStyle(fontSize: 40),
                ));
              } else {
                return _AlbumListview(snapshot.requireData);
              }
          }
        },
      ),
    );
  }
}

class _AlbumListview extends StatelessWidget {
  const _AlbumListview(this.list, {Key? key}) : super(key: key);
  final List<Album> list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        var album = list[index];
        return ListTile(
          title: Text(album.title),
          leading: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${album.id}"),
            ),
            color: Colors.blue.shade200,
          ),
        );
      },
    );
  }
}
