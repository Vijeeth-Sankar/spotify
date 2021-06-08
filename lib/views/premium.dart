import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Premiumscreen extends StatefulWidget {
  const Premiumscreen({Key? key}) : super(key: key);

  @override
  _PremiumscreenState createState() => _PremiumscreenState();
}

class _PremiumscreenState extends State<Premiumscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                height: 250,
                width: 500,
                margin: EdgeInsets.only(top: 45, right: 50, left: 50),
                child: Text(
                  "Get more out of your music with premium",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                  ),
                  textAlign: TextAlign.center,
                )),
            CarouselSlider(
              options: CarouselOptions(
                height: 120.0,
                initialPage: 0,
                enableInfiniteScroll: false,
              ),
              items: ["Add Break", "Streaming only", "Listen Only"].map((i) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    height: 150,
                    width: 300,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white54,
                            child: Column(
                              children: [
                                SizedBox(height: 5),
                                Text(
                                  "Free",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 45),
                                Text(
                                  i,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.greenAccent[200],
                            child: Column(
                              children: [
                                SizedBox(height: 5),
                                Text(
                                  "Premium",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 45),
                                Text(
                                  "Ad-Free Music",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                });
              }).toList(),
            ),
            SizedBox(height: 25),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: Text(
                "Get Premium",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 20,
                  letterSpacing: 2,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Team And Condition Apply",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(height: 52),
            Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white54,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Spotify Free",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text("Current Plan",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        letterSpacing: 1,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
