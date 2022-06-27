import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/util_widgets.dart';

class OpenArt extends StatefulWidget {
  const OpenArt({Key? key}) : super(key: key);

  @override
  State<OpenArt> createState() => _OpenArtState();
}

class _OpenArtState extends State<OpenArt> with UtilWidgets {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightWhite,
      appBar: AppBar(
        backgroundColor: lightWhite,
        elevation: 0,
        title: const Image(
          alignment: Alignment.bottomCenter,
          height: 40,
          image: AssetImage("assets/logo.png"),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
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
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 20),
            child: Container(
              height: 450,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/artwork.jpg"),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Silent Color",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        height: 40,
                        width: 40,
                        padding: const EdgeInsets.all(5),
                        decoration: boxDecoration(
                            cornerRadius: 20, color: Colors.white),
                        child: const Icon(Icons.favorite_border),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      padding: const EdgeInsets.all(5),
                      decoration:
                          boxDecoration(cornerRadius: 20, color: Colors.white),
                      child: const Icon(CupertinoIcons.share_up),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
            child: Row(
              children: [
                letterTextButton(
                  letter: "H",
                  text: "@openart",
                  gradientStart: 0xFFFF9C00,
                  gradientEnd: 0xffFFDB03,
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Text(
              "Together with my design team, we designed this futuristic Cyberyacht concept artwork. We wanted to create something that has not been created yet, so we started to collect ideas of how we imagine the Cyberyacht could look like in the future.",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              children: [
                hashTag("color"),
                hashTag("circle"),
                hashTag("black"),
                hashTag("art"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                linkButton("assets/etherscan.png", "View on Etherscan"),
                linkButton("assets/ipfs.png", "View on IPFS"),
                linkButton("assets/ipfsmetadata.png", "View IPFS Metadata"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Container(
              height: 130,
              decoration: boxDecoration(cornerRadius: 30, color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        Text(
                          "Sold for",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 22),
                        ),
                        Text(
                          " 1.50 ETH",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 24),
                        ),
                        Text(
                          " \$2,683.73",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.black26),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, bottom: 20),
                          child: Image(
                            image: AssetImage("assets/starsemoj.png"),
                            height: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: [
                        const Text(
                          "Owner by",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 22),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: letterTextButton(
                              letter: "D",
                              text: "@david",
                              gradientStart: gradientBlueStart,
                              gradientEnd: gradientBlueEnd),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Text(
              "Activity",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              children: [
                linkLongButton(
                  title: "Auction won by David",
                  disc: "June 04, 2021 at 12:00am",
                  textSold: "1.50 ETH",
                  letter: "D",
                  imgProfile: "assets/circleProfile.png",
                  price: "",
                ),
                linkLongButton(
                  title: "Bid place by @pawel09",
                  disc: "June 06, 2021 at 12:00am",
                  textSold: "1.50 ETH",
                  price: "2,683.73",
                  letter: "",
                  imgProfile: "assets/circleProfile.png",
                ),
                linkLongButton(
                  title: "Listing by @han152",
                  disc: "June 04, 2021 at 12:00am",
                  textSold: "1.00 ETH",
                  price: "2,683.73",
                  letter: "",
                  imgProfile: "assets/circleProfile.png",
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Image(
              image: AssetImage("assets/logoOpen.png"),
              height: 50,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
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
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
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
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
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
        ],
      ),
    );
  }
}
