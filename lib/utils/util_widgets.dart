import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_art/utils/constants.dart';

mixin UtilWidgets {
  // for hashtags
  Widget hashTag(String title) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        height: 35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: const Border.fromBorderSide(
            BorderSide(color: Colors.black12, width: 2),
          ),
        ),
        child: Text(
          "#$title",
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black38,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  // for button
  Widget linkButton(String imgAssetsName, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Container(
        height: 70,
        decoration: boxDecoration(cornerRadius: 20, color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Image(
                alignment: Alignment.centerLeft,
                image: AssetImage(imgAssetsName),
                height: 30,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: const EdgeInsets.only(left: 30),
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15),
              child: Image(
                alignment: Alignment.centerLeft,
                image: AssetImage("assets/external.png"),
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // for button with letter gradient
  Widget letterTextButton(
      {required String letter,
      required String text,
      var gradientStart,
      var gradientEnd}) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: shadow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              height: 30,
              width: 30,
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(gradientStart),
                      Color(gradientEnd),
                    ],
                    stops: const [0.1, 0.8],
                    transform: const GradientRotation(45),
                  ),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    letter,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              text,
              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
            ),
          )
        ],
      ),
    );
  }

  BoxDecoration boxDecoration(
      {required double cornerRadius, required Color color}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(cornerRadius),
      color: color,
      boxShadow: shadow,
    );
  }
}
