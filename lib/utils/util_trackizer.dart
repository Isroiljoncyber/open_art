import 'package:flutter/material.dart';

mixin UtilTrackizer {
  Widget linerButton(String title, String appName) {
    return ListTile(
      leading: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
        textAlign: TextAlign.center,
      ),
      title: Align(
        alignment: Alignment.centerRight,
        child: Text(
          appName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Colors.white,
        size: 25,
      ),
    );
  }
}
