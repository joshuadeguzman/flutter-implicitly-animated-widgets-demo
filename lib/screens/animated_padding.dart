// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_implicit_animations/widgets/appbar.dart';
import 'package:flutter_implicit_animations/widgets/demo_controllers.dart';
import 'package:flutter_implicit_animations/widgets/header.dart';

class AnimatedPaddingScreen extends StatefulWidget {
  static String SCREEN_TITLE = "AnimatedPadding";

  @override
  State<StatefulWidget> createState() {
    return AnimatedPaddingScreenState();
  }
}

class AnimatedPaddingScreenState extends State<AnimatedPaddingScreen> {
  String get _widgetTitle => AnimatedPaddingScreen.SCREEN_TITLE;
  int _animationDuration = 1000;
  double _padding = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: _widgetTitle,
        isHome: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Header(
                  title: _widgetTitle,
                  description:
                      'A widget that cross-fades between two given children and animates itself between their sizes.',
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Text(
                  'Demo',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                Container(
                  color: Colors.blueGrey,
                  height: 300,
                  width: 300,
                  child: AnimatedPadding(
                    padding: EdgeInsets.all(_padding),
                    duration: Duration(milliseconds: _animationDuration),
                    child: Container(
                      child: FlutterLogo(),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                DemoControllers(
                  animateCallback: () => {
                        setState(() {
                          _padding = 50;
                        })
                      },
                  restoreStatesCallback: () => {
                        setState(() {
                          _padding = 20;
                        })
                      },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
