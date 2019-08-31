// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_implicit_animations/widgets/appbar.dart';
import 'package:flutter_implicit_animations/widgets/demo_controllers.dart';
import 'package:flutter_implicit_animations/widgets/header.dart';

class AnimatedPhysicalModelScreen extends StatefulWidget {
  static String SCREEN_TITLE = "AnimatedPhysicalModel";

  @override
  State<StatefulWidget> createState() {
    return AnimatedPhysicalModelScreenState();
  }
}

class AnimatedPhysicalModelScreenState
    extends State<AnimatedPhysicalModelScreen> {
  String get _widgetTitle => AnimatedPhysicalModelScreen.SCREEN_TITLE;
  int _animationDuration = 1000;
  Color _widgetColor = Colors.blue;
  double _elevation = 10;
  Color _shadowColor = Colors.blue;

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
                      'A widget representing a physical layer that clips its children to a shape.',
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
                AnimatedPhysicalModel(
                  duration: Duration(milliseconds: _animationDuration),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    height: 300,
                    width: 300,
                    child: FlutterLogo(),
                  ),
                  shape: BoxShape.rectangle,
                  color: _widgetColor,
                  elevation: _elevation,
                  shadowColor: _shadowColor,
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                DemoControllers(
                  animateCallback: () => {
                        setState(() {
                          _widgetColor = Colors.yellow;
                          _elevation = 30;
                          _shadowColor = Colors.yellow;
                        })
                      },
                  restoreStatesCallback: () => {
                        setState(() {
                          _widgetColor = Colors.blue;
                          _elevation = 10;
                          _shadowColor = Colors.blue;
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
