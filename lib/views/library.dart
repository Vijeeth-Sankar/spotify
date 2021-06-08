import 'dart:math';

import 'package:flutter/material.dart';

class Libraryscreen extends StatefulWidget {
  const Libraryscreen({Key? key}) : super(key: key);

  @override
  _LibraryscreenState createState() => _LibraryscreenState();
}

class _LibraryscreenState extends State<Libraryscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.blue,
                    child: Text(
                      "N",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Your Library",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 60),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 35,
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                    size: 35,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(width: 10),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: Text(
                    "Playlist",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      fontSize: 20,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                  child: Text(
                    "Artist",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                SizedBox(width: 25),
                Transform.rotate(
                  angle: 90 * pi / 180,
                  child: Icon(
                    Icons.compare_arrows_sharp,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 20),
                Text(
                  "Recently Player",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(width: 110),
                Icon(Icons.list_alt, color: Colors.white),
              ],
            ),
            SizedBox(height: 10),
            tile("Liked Songs", "assets/like.jfif", "Playlist 52 Songs"),
            tile("On Repeat", "assets/onrepeat.jfif", "Playlist for u"),
            tile("Malayalam", "assets/ser6.jfif", "Malayalam List"),
            tile("Weekly Discover", "assets/weekly.jfif", "Weekly discover"),
            tile("Liked Songs", "assets/like.jfif", "Playlist 52 Songs"),
            tile("On Repeat", "assets/onrepeat.jfif", "Playlist for u"),
            tile("Malayalam", "assets/ser6.jfif", "Malayalam List"),
            tile("Weekly Discover", "assets/weekly.jfif", "Weekly discover"),
            tile("Liked Songs", "assets/like.jfif", "Playlist 52 Songs"),
            tile("On Repeat", "assets/onrepeat.jfif", "Playlist for u"),
            tile("Malayalam", "assets/ser6.jfif", "Malayalam List"),
            tile("Weekly Discover", "assets/weekly.jfif", "Weekly discover"),
            tile("Liked Songs", "assets/like.jfif", "Playlist 52 Songs"),
            tile("On Repeat", "assets/onrepeat.jfif", "Playlist for u"),
            tile("Malayalam", "assets/ser6.jfif", "Malayalam List"),
            tile("Weekly Discover", "assets/weekly.jfif", "Weekly discover"),
          ],
        ),
      ),
    );
  }

  ListTile tile(String title, String imgurl, String subtitle) {
    return ListTile(
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: AssetImage(imgurl),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.white54,
          fontSize: 15,
        ),
      ),
    );
  }
}
