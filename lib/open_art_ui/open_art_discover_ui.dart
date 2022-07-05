import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_art/utils/util_widgets.dart';

import '../utils/constants.dart';

class OpenArtDiscover extends StatefulWidget {
  final String title;

  const OpenArtDiscover(this.title, {Key? key}) : super(key: key);

  @override
  State<OpenArtDiscover> createState() => _OpenArtDiscoverState();
}

class _OpenArtDiscoverState extends State<OpenArtDiscover> with UtilWidgets {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightWhite,
        elevation: 0,
        title: const Image(
          alignment: Alignment.bottomCenter,
          height: 35,
          image: AssetImage("assets/logo.png"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              size: 30,
              CupertinoIcons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/menu.png",
                height: 30,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 20, right: 20),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 50),
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    "Follow at least five creators \n to build your feed…",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              circleButton(
                gradientColors: [
                  Color(gradientBlueStart),
                  Color(gradientBlueEnd)
                ],
                height: 40,
                cornerRadius: 20,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Feature Creator",
                    style: TextStyle(
                        fontSize: 16,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: circleButton(
                  background: const Color(0xffF0F0F0),
                  height: 40,
                  cornerRadius: 20,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "All Create",
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                  ),
                ),
              ),
            ],
          ),
          bannerDiscover(
              backgroundImg: "assets/back1.png",
              profileImg: "assets/profile1.png",
              title: "Kennedy Yanko",
              disc:
                  "Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…",
              followerNumber: "2024"),
          bannerDiscover(
              backgroundImg: "assets/back2.png",
              profileImg: "assets/profile2.png",
              title: "Holly Herndon",
              disc:
                  "A family of artists in Ethiopia making art in the style of tizita- nostalgia and longing for the past.📍 Addis Ababa  …",
              followerNumber: "1024"),
          bannerDiscover(
              backgroundImg: "assets/back3.png",
              profileImg: "assets/profile3.png",
              title: "Addie Wagenknecht",
              disc:
                  "Addie Wagenknecht and Aiala Hernando. Documentation of the End of the Worlds.",
              followerNumber: "1099"),
          bannerDiscover(
              backgroundImg: "assets/back4.png",
              profileImg: "assets/profile4.png",
              title: "Kinlaw",
              disc:
                  "Audio Composer, Choreographer,Vocalist + Scientist ~Sigh of My Hand (1/3) is listed now ~ made in partnersh…",
              followerNumber: "1099"),
          bannerDiscover(
              backgroundImg: "assets/back5.png",
              profileImg: "assets/profile5.png",
              title: "Jennifer Mehigan",
              disc:
                  "LOW POLY GODDESS / Jennifer Mehigan is an interdisciplinary artist whose work engages with abstract manifestations of de…",
              followerNumber: "1099"),
          Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 40, bottom: 20),
            child: gradientButton(
              gradientColors: [
                Color(gradientBlueStart),
                Color(gradientBlueEnd)
              ],
              gradientStops: [0.2, 0.9],
              cornerRadius: 10,
              height: 60,
              gradientRadian: 45,
              thickness: 2,
              background: lightWhite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  Text(
                    "Load more",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Image(
              image: AssetImage("assets/logoOpen.png"),
              height: 50,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "The",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w200),
              ),
              Text(
                "New",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w300),
              ),
              Text(
                "Creativity",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
              ),
              Text(
                "Economy",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: GestureDetector(
              onTap: () {
                print("object");
              },
              onLongPress: () {
                print("object");
              },
              child: filledButton("Earn now"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context, "New Pop");
              },
              child: gradientButton(
                gradientColors: [
                  Color(gradientBlueStart),
                  Color(gradientBlueEnd)
                ],
                gradientStops: [0.2, 0.9],
                cornerRadius: 15,
                height: 80,
                thickness: 3,
                background: Colors.white,
                child: Center(
                  child: GradientText(
                    "Discover more",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Color(gradientBlueStart),
                    ),
                    gradient: LinearGradient(colors: [
                      Color(gradientBlueStart),
                      Color(gradientBlueEnd)
                    ]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
