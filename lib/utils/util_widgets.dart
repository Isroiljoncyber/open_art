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
            child: circleProfile(
                gradientStart: gradientStart,
                gradientEnd: gradientEnd,
                letter: letter,
                textSize: 20,
                height: 30,
                imgProfile: ""),
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

  // linker long button
  Widget linkLongButton(
      {required String title,
      required String disc,
      required String textSold,
      required String letter,
      required String price,
      required String imgProfile}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        height: 100,
        decoration: boxDecoration(cornerRadius: 20, color: Colors.white),
        child: Row(
          children: [
            Align(
              alignment: Alignment.topLeft,
              heightFactor: 5,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 15),
                child: circleProfile(
                  gradientStart: gradientBlueStart,
                  gradientEnd: gradientBlueEnd,
                  letter: letter,
                  textSize: 40,
                  height: 50,
                  imgProfile: imgProfile,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 15, left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        disc,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: textSoldWidget(textSold, price),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15, bottom: 30),
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

  Widget textSoldWidget(String textSold, String price) {
    if (price.isEmpty) {
      return Text(
        "Sold for $textSold",
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      );
    } else {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            textSold,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            " \$$price",
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black38,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      );
    }
  }

  BoxDecoration boxDecoration(
      {required double cornerRadius, required Color color}) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(cornerRadius),
      color: color,
      boxShadow: shadow,
    );
  }

  Widget circleProfile(
      {required var gradientStart,
      required var gradientEnd,
      required String letter,
      required double textSize,
      required double height,
      required String imgProfile}) {
    return Container(
      height: height,
      width: height,
      padding: const EdgeInsets.all(1),
      decoration: circleProfileFinder(
          letter: letter,
          imgUrl: imgProfile,
          gradientStart: gradientStart,
          gradientEnd: gradientEnd,
          height: height),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            letter,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: textSize,
                color: Colors.white),
          ),
        ],
      ),
    );
  }

  // to indicate weather or not it has a profile image or just letter with gradient background
  BoxDecoration circleProfileFinder(
      {required String letter,
      required String imgUrl,
      required int gradientStart,
      required int gradientEnd,
      required double height}) {
    if (letter.isNotEmpty) {
      return BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(gradientStart),
            Color(gradientEnd),
          ],
          stops: const [0.1, 0.8],
          transform: const GradientRotation(45),
        ),
        borderRadius: BorderRadius.circular(height / 2),
      );
    } else {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(height / 2),
        image: DecorationImage(
          image: AssetImage(imgUrl),
        ),
      );
    }
  }

  Widget filledButton(String title) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xff434343),
            Color(0xff000000),
          ],
          stops: [0.2, 0.9],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 25,
          ),
        ),
      ),
    );
  }

  // this is special for gradient button
  Widget gradientButton(
      {required List<Color> gradientColors,
      required List<double> gradientStops,
      double gradientRadian = 0,
      required double cornerRadius,
      required double height,
      required double thickness,
      required Color background,
      required Widget child}) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          stops: gradientStops,
          transform: GradientRotation(gradientRadian),
        ),
        borderRadius: BorderRadius.circular(cornerRadius),
      ),
      child: Padding(
        padding: EdgeInsets.all(thickness),
        child: Container(
          decoration: BoxDecoration(
            color: background,
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          child: child,
        ),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
