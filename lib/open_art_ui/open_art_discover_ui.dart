import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_art/utils/util_widgets.dart';

import '../utils/constants.dart';

class OpenArtDiscover extends StatefulWidget {
  const OpenArtDiscover({Key? key}) : super(key: key);

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
          height: 40,
          image: AssetImage("assets/logo.png"),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              size: 35,
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
                height: 40,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 80),
              child: Center(
                child: Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        "Discover creator",
                        style: TextStyle(
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

              ],
            ),
            bannerDiscover(
                backgroundImg: "assets/backg1.png",
                profileImg: "assets/profile1.png",
                title: "Kennedy Yanko",
                disc:
                    "Kennedy Yanko is an artist working in found metal and paint skin. Her methods reflect a dual abstract expressionist-surr…",
                followerNumber: "2024")
          ],
        ),
      ),
    );
  }
}
