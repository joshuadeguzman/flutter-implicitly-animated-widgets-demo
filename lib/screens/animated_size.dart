// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_implicit_animations/widgets/appbar.dart';
import 'package:flutter_implicit_animations/widgets/demo_controllers.dart';
import 'package:flutter_implicit_animations/widgets/header.dart';

class AnimatedSizeScreen extends StatefulWidget {
  static String SCREEN_TITLE = "AnimatedSize";

  @override
  State<StatefulWidget> createState() {
    return AnimatedSizeScreenState();
  }
}

class AnimatedSizeScreenState extends State<AnimatedSizeScreen>
    with TickerProviderStateMixin {
  String get _widgetTitle => AnimatedSizeScreen.SCREEN_TITLE;
  Duration _animationDuration = Duration(milliseconds: 1000);
  Color _color = Colors.blueGrey;
  double _height = 300;
  double _width = 300;

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
                      'Animated version of Padding which automatically transitions the indentation over a given duration whenever the given inset changes.',
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
                AnimatedSize(
                  duration: _animationDuration,
                  vsync: this,
                  child: Container(
                    width: _width,
                    height: _height,
                    color: _color,
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                DemoControllers(
                  animateCallback: () => {
                        setState(() {
                          _color = Colors.blue;
                          _width = 200;
                          _height = 20;
                        })
                      },
                  restoreStatesCallback: () => {
                        setState(() {
                          _color = Colors.blueGrey;
                          _width = 300;
                          _height = 300;
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
