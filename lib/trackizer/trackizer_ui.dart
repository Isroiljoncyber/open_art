import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:open_art/utils/util_trackizer.dart';

class TrackizerApp extends StatelessWidget with UtilTrackizer {
  const TrackizerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Container(
          height: 600,
          decoration: BoxDecoration(
            color: const Color(0xff282833),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
                linerButton("Name", "Spotify")
            ],
          ),
        ),
      ),
    );
  }
}
