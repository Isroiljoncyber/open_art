import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_art/utils/constants.dart';
import 'package:open_art/utils/util_widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpenArt(),
    ),
  );
}

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
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                linkButton("assets/etherscan.png", "View on Etherscan"),
                linkButton("assets/ipfs.png", "View on IPFS"),
                linkButton("assets/ipfsmetadata.png", "View IPFS Metadata"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 20),
            child: Container(
              height: 130,
              decoration: boxDecoration(cornerRadius: 30, color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    child: Row(
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
                    padding: const EdgeInsets.only(left: 15, top: 15),
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
                              gradientStart: 0xff0038F5,
                              gradientEnd: 0xff9F03FF),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
