import 'package:flutter/material.dart';
import 'package:music_app/screens/detailscreen.dart';
import 'package:music_app/utils/colors.dart';
import 'package:music_app/utils/songlist.dart';

class Playlist extends StatelessWidget {
  const Playlist({super.key, required this.songModel});
  final SongModel songModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Detail_View()));
      },
      child: Column(
        children: [
          ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Image.asset("images/MUSIC.ico"),
                backgroundColor: ColorsConstraint.bgcolordashboard,
              ),
              trailing: Text(songModel.duration,
                  style: TextStyle(color: ColorsConstraint.fontcolor)),
              title: Text(
                songModel.name,
                style: TextStyle(color: ColorsConstraint.fontcolor),
              ),
              subtitle: Text(songModel.singer,
                  style: TextStyle(color: ColorsConstraint.subtitle))),
        ],
      ),
    );
  }
}
