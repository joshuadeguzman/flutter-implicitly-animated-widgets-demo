// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_implicit_animations/widgets/appbar.dart';

class AnimatedContainerScreen extends StatefulWidget {
  static String SCREEN_TITLE = "AnimatedContainer";

  @override
  State<StatefulWidget> createState() {
    return AnimatedContainerScreenState();
  }
}

class AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  final int _animationDuration = 2000;
  Color _backgroundColor = Colors.blueGrey;
  double _height = 300;
  double _width = 300;
  double _borderWidth = 300;
  double _borderRadius = 10;
  double _padding = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AnimatedContainerScreen.SCREEN_TITLE,
        isHome: false,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Text(
                  'AnimatedContainer',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
                Text(
                  'A container that gradually changes its values over a period of time.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blueGrey,
                  ),
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
                AnimatedContainer(
                  height: _height,
                  width: _width,
                  padding: EdgeInsets.all(_padding),
                  decoration: BoxDecoration(
                    color: _backgroundColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(_borderRadius),
                    ),
                  ),
                  duration: Duration(milliseconds: _animationDuration),
                  child: FlutterLogo(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _height = 200;
                            _width = 200;
                            _borderRadius = 30;
                            _backgroundColor = Colors.red;
                            _padding = 10;
                          });
                        },
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.restore,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _height = 300;
                            _width = 300;
                            _borderRadius = 10;
                            _backgroundColor = Colors.blueGrey;
                            _padding = 50;
                          });
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}