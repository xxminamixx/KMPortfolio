import 'package:flutter/material.dart';

class Screen {

  Screen(BuildContext context) {
    Screen.size = MediaQuery.of(context).size;
  }

  static Size? size;

}