// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_implicit_animations/widgets/appbar.dart';
import 'package:flutter_implicit_animations/widgets/demo_controllers.dart';
import 'package:flutter_implicit_animations/widgets/header.dart';

class AnimatedBarChartsScreen extends StatefulWidget {
  static String SCREEN_TITLE = "AnimatedBarCharts";

  @override
  State<StatefulWidget> createState() {
    return AnimatedBarChartsScreenState();
  }
}

class AnimatedBarChartsScreenState
    extends State<AnimatedBarChartsScreen> {
  String get _widgetTitle => AnimatedBarChartsScreen.SCREEN_TITLE;
  Duration _animationDuration = Duration(milliseconds: 1000);
  double _padding = 50;

  double _barChart1Height = 50;
  double _barChart2Height = 100;
  double _barChart3Height = 30;
  double _barChart4Width = 10;
  double _barChart5Width = 70;
  double _barChart6Width = 20;

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
                      'Custom bar charts created using Flutter Animations.',
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                Container(
                  height: 250,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      AnimatedContainer(
                        duration: _animationDuration,
                        height: _barChart1Height,
                        width: 50,
                        padding: EdgeInsets.all(_padding),
                        color: Colors.blue,
                        child: Container(),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      AnimatedContainer(
                        duration: _animationDuration,
                        height: _barChart2Height,
                        width: 50,
                        padding: EdgeInsets.all(_padding),
                        color: Colors.lightGreen,
                        child: Container(),
                      ),
                      Padding(padding: EdgeInsets.only(right: 10)),
                      AnimatedContainer(
                        duration: _animationDuration,
                        height: _barChart3Height,
                        width: 50,
                        padding: EdgeInsets.all(_padding),
                        color: Colors.red,
                        child: Container(),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                DemoControllers(
                  animateCallback: () => {
                    setState(() {
                      _barChart1Height = 100;
                      _barChart2Height = 200;
                      _barChart3Height = 10;
                    })
                  },
                  restoreStatesCallback: () => {
                    setState(() {
                      _barChart1Height = 50;
                      _barChart2Height = 20;
                      _barChart3Height = 100;
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
