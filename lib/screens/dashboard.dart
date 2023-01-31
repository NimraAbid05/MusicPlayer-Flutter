import 'package:flutter/material.dart';
import 'package:music_app/screens/playlist.dart';
import 'package:music_app/utils/colors.dart';
import 'package:music_app/utils/songlist.dart';

class Dashboard_View extends StatelessWidget {
  const Dashboard_View({super.key});

  @override
  Widget build(BuildContext context) {
    //list using song class
    List<SongModel> songs = [
      SongModel(name: "Ajnabi", singer: "Unknown", duration: "3:32"),
      SongModel(name: "Alone Sad Songs", singer: "Unknown", duration: "8:32"),
      SongModel(name: "Asim Azhar - Habibi", singer: "Unknown", duration: "3:39"),
      SongModel(name: "Atif Aslam Mashup", singer: "Atif Aslam", duration: "5:32"),
      SongModel(name: "Bollywood Soft Songs", singer: "Unknown", duration: "10:32"),
      SongModel(name: "Brown Munde", singer: "Gurinder Gill", duration: "4:32"),
      SongModel(name: "Coke Studio", singer: "Naseebo Lal x Abida Parveen", duration: "6:32"),
      SongModel(name: "Dil Jalane ki bat", singer: "Unknown", duration: "3:32"),
      SongModel(name: "Dil-e-Gumshuda", singer: "Unknown", duration: "4:32"),
    ];
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: ColorsConstraint.bgcolordashboard,
        appBar: AppBar(
          backgroundColor: ColorsConstraint.appbarcolor,
          elevation: 0.0,
          leading: Icon(
            Icons.sort_rounded,
            color: ColorsConstraint.fontcolor,
          ),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),
        body: Column(
          children: [
            Text(
              "Music Player",
              style: TextStyle(
                color: ColorsConstraint.fontcolor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            TabBar(
                indicatorColor: ColorsConstraint.fontcolor,
                labelColor: ColorsConstraint.fontcolor,
                unselectedLabelColor:
                    ColorsConstraint.fontcolor.withOpacity(0.5),
                tabs: [
                  Tab(text: "Playlists"),
                  Tab(text: "Albums"),
                  Tab(text: "Artists"),
                ]),
            Expanded(
              child: TabBarView(children: [
                Container(
                    child: ListView.builder(
                  itemCount: songs.length,
                  itemBuilder: (context, index) =>
                      Playlist(songModel: songs[index]),
                )),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 8,
                      ),
                      itemCount: 8,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: ColorsConstraint.bgcolordashboard,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black.withOpacity(0.4),
                                    blurRadius: 8,
                                    spreadRadius: 1)
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Center(
                                    child: Image.asset(
                                  "images/MUSIC.ico",
                                  height: 50,
                                  width: 50,
                                )),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Bollywood Songs",
                                style: TextStyle(
                                    color: ColorsConstraint.fontcolor),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                    child: ListView.builder(
                  itemCount: songs.length,
                  itemBuilder: (context, index) =>
                      Playlist(songModel: songs[index]),
                )),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
