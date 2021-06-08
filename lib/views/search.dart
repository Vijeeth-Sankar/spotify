import 'package:flutter/material.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({Key? key}) : super(key: key);

  @override
  _SearchscreenState createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30, left: 20),
                child: Text(
                  "Search",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 33,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 25),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Icon(Icons.search, size: 35),
                    SizedBox(width: 10),
                    Text(
                      "Artist, songs or podcasts",
                      style: TextStyle(
                        color: Colors.black45,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              smalltitle(context, "Tamil", Colors.red, "English", Colors.green,
                  "assets/ser1.jfif", "assets/ser1.jfif"),
              SizedBox(
                height: 10,
              ),
              smalltitle(context, "Punjabi", Colors.orange, "English",
                  Colors.yellow, "assets/ser3.jfif", "assets/ser4.jfif"),
              SizedBox(
                height: 10,
              ),
              smalltitle(context, "Telugu", Colors.purple, "English",
                  Colors.blueAccent, "assets/ser5.jfif", "assets/ser6.jfif"),
              SizedBox(
                height: 10,
              ),
              smalltitle(context, "Tamil", Colors.red[200], "English",
                  Colors.green[800], "assets/ser7.jfif", "assets/ser1.jfif"),
              SizedBox(
                height: 10,
              ),
              smalltitle(context, "Tamil  ", Colors.red, "pop", Colors.green,
                  "assets/ser1.jfif", "assets/ser2.jfif"),
              SizedBox(
                height: 10,
              ),
              smalltitle(context, "Punjabi", Colors.orange, "English",
                  Colors.yellow, "assets/ser3.jfif", "assets/ser4.jfif"),
              SizedBox(
                height: 10,
              ),
              smalltitle(context, "Telugu", Colors.purple, "English",
                  Colors.blueAccent, "assets/ser5.jfif", "assets/ser6.jfif"),
              SizedBox(
                height: 10,
              ),
              smalltitle(context, "Tamil", Colors.red[200], "English",
                  Colors.green[800], "assets/ser7.jfif", "assets/ser1.jfif"),
            ],
          ),
        ),
      ),
    );
  }

  Row smalltitle(BuildContext context, String text, final clrs, String text2,
      final clrs2, String imgurl1, String imgurl2) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 25, right: 10),
            height: 85,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: clrs,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 10),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      transform: new Matrix4.identity()
                        ..rotateZ(15 * 3.1415927 / -160),
                      child: Image.asset(imgurl1, height: 60, width: 75)),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(top: 10, left: 10, right: 25),
            height: 85,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: clrs2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, left: 8, right: 10),
                  child: Text(
                    text2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      transform: new Matrix4.identity()
                        ..rotateZ(15 * 3.1415927 / -160),
                      child: Image.asset(imgurl2, height: 60, width: 75)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
