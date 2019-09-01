// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_implicit_animations/widgets/appbar.dart';
import 'package:flutter_implicit_animations/widgets/demo_controllers.dart';
import 'package:flutter_implicit_animations/widgets/header.dart';

class AnimatedContainerScreen extends StatefulWidget {
  static String SCREEN_TITLE = "AnimatedContainer";

  @override
  State<StatefulWidget> createState() {
    return AnimatedContainerScreenState();
  }
}

class AnimatedContainerScreenState extends State<AnimatedContainerScreen> {
  String get _widgetTitle => AnimatedContainerScreen.SCREEN_TITLE;
  Duration _animationDuration = Duration(milliseconds: 1000);
  Color _backgroundColor = Colors.blueGrey;
  double _height = 300;
  double _width = 300;
  double _borderRadius = 10;
  double _padding = 50;

  // TODO: For Animated Bar Chart example, migrate to other screen
  // double _barChart1Height = 50;
  // double _barChart2Height = 100;
  // double _barChart3Height = 30;
  // double _barChart4Width = 10;
  // double _barChart5Width = 70;
  // double _barChart6Width = 20;

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
                      'A container that gradually changes its values over a period of time.',
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
                  duration: _animationDuration,
                  height: _height,
                  width: _width,
                  padding: EdgeInsets.all(_padding),
                  decoration: BoxDecoration(
                    color: _backgroundColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(_borderRadius),
                    ),
                  ),
                  child: FlutterLogo(),
                ),
                // TODO: Migrate to a separate screen / widget view
                // Padding(padding: EdgeInsets.only(bottom: 10)),
                // Text(
                //   'Animated Bar Charts',
                //   style: TextStyle(
                //     fontSize: 20,
                //     fontWeight: FontWeight.bold,
                //     color: Colors.blueGrey,
                //   ),
                // ),
                // Padding(padding: EdgeInsets.only(bottom: 10)),
                // Container(
                //   height: 300,
                //   child: Row(
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       AnimatedContainer(
                //         duration: _animationDuration,
                //         height: _barChart1Height,
                //         width: 50,
                //         padding: EdgeInsets.all(_padding),
                //         color: Colors.blue,
                //         child: Container(),
                //       ),
                //       Padding(padding: EdgeInsets.only(right: 10)),
                //       AnimatedContainer(
                //         duration: _animationDuration,
                //         height: _barChart2Height,
                //         width: 50,
                //         padding: EdgeInsets.all(_padding),
                //         color: Colors.lightGreen,
                //         child: Container(),
                //       ),
                //       Padding(padding: EdgeInsets.only(right: 10)),
                //       AnimatedContainer(
                //         duration: _animationDuration,
                //         height: _barChart3Height,
                //         width: 50,
                //         padding: EdgeInsets.all(_padding),
                //         color: Colors.red,
                //         child: Container(),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   height: 300,
                //   width: 350,
                //   child: Column(
                //     mainAxisSize: MainAxisSize.max,
                //     crossAxisAlignment: CrossAxisAlignment.start,
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: <Widget>[
                //       AnimatedContainer(
                //         duration: _animationDuration,
                //         height: 50,
                //         width: _barChart4Width,
                //         padding: EdgeInsets.all(_padding),
                //         color: Colors.orangeAccent,
                //         child: Container(),
                //       ),
                //       Padding(padding: EdgeInsets.only(bottom: 10)),
                //       AnimatedContainer(
                //         duration: _animationDuration,
                //         height: 50,
                //         width: _barChart5Width,
                //         padding: EdgeInsets.all(_padding),
                //         color: Colors.pinkAccent,
                //         child: Container(),
                //       ),
                //       Padding(padding: EdgeInsets.only(bottom: 10)),
                //       AnimatedContainer(
                //         duration: _animationDuration,
                //         height: 50,
                //         width: _barChart6Width,
                //         padding: EdgeInsets.all(_padding),
                //         color: Colors.purpleAccent,
                //         child: Container(),
                //       ),
                //     ],
                //   ),
                // ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                DemoControllers(
                  animateCallback: () => {
                        setState(() {
                          _height = 200;
                          _width = 200;
                          _borderRadius = 30;
                          _backgroundColor = Colors.red;
                          _padding = 10;

                          // TODO: For Animated Bar Chart example, migrate to other screen
                          // _barChart1Height = 100;
                          // _barChart2Height = 200;
                          // _barChart3Height = 10;

                          // _barChart4Width = 320;
                          // _barChart5Width = 350;
                          // _barChart6Width = 180;
                        })
                      },
                  restoreStatesCallback: () => {
                        setState(() {
                          _height = 300;
                          _width = 300;
                          _borderRadius = 10;
                          _backgroundColor = Colors.blueGrey;
                          _padding = 50;

                          // TODO: For Animated Bar Chart example, migrate to other screen
                          // _barChart1Height = 50;
                          // _barChart2Height = 20;
                          // _barChart3Height = 100;

                          // _barChart4Width = 160;
                          // _barChart5Width = 170;
                          // _barChart6Width = 230;
                        }),
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
