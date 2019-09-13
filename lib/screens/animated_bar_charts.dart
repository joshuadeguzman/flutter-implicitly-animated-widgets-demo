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

class AnimatedBarChartsScreenState extends State<AnimatedBarChartsScreen> {
  String get _widgetTitle => AnimatedBarChartsScreen.SCREEN_TITLE;
  bool _isLoadingBarChart = true;
  double _barChart1Height = 150;
  double _barChart2Height = 150;
  double _barChart3Height = 100;
  Color _barChart1Color = Colors.blue;
  Color _barChart2Color = Colors.orange;
  Color _barChart3Color = Colors.green;
  TextStyle _barChartLabel = TextStyle(color: Colors.black54, fontSize: 10);

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
                AnimatedCrossFade(
                  duration: Duration(milliseconds: 500),
                  firstChild: _buildLoadingIndicators(),
                  secondChild: _buildBarCharts(),
                  crossFadeState: _isLoadingBarChart
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                ),
                Padding(padding: EdgeInsets.only(bottom: 20)),
                DemoControllers(
                  animateCallback: () {
                    setState(() {
                      _isLoadingBarChart = true;
                    });

                    Future.delayed(const Duration(milliseconds: 500), () {
                      setState(() {
                        _barChart1Height = 270;
                        _barChart2Height = 350;
                        _barChart3Height = 40;

                        _barChart1Color = Colors.blueAccent;
                        _barChart2Color = Colors.orangeAccent;
                        _barChart3Color = Colors.greenAccent;

                        _barChartLabel = TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        );

                        _isLoadingBarChart = false;
                      });
                    });
                  },
                  restoreStatesCallback: () {
                    setState(() {
                      _isLoadingBarChart = true;
                    });

                    Future.delayed(const Duration(milliseconds: 500), () {
                      setState(() {
                        _barChart1Height = 90;
                        _barChart2Height = 170;
                        _barChart3Height = 300;

                        _barChart1Color = Colors.blue;
                        _barChart2Color = Colors.orange;
                        _barChart3Color = Colors.green;

                        _barChartLabel = TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.normal
                        );

                        _isLoadingBarChart = false;
                      });
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingIndicators() {
    return Container(
      height: 400,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _buildBarCharts() {
    return Container(
      height: 400,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: _barChart1Height,
            width: 75,
            color: _barChart1Color,
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  AnimatedDefaultTextStyle(
                    curve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 500),
                    child: Text('Blue'),
                    style: _barChartLabel,
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 10)),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: _barChart2Height,
            width: 75,
            color: _barChart2Color,
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  AnimatedDefaultTextStyle(
                    curve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 500),
                    child: Text('Orange'),
                    style: _barChartLabel,
                  ),
                ],
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 10)),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            height: _barChart3Height,
            width: 75,
            color: _barChart3Color,
            child: Container(
              padding: EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  AnimatedDefaultTextStyle(
                    curve: Curves.bounceInOut,
                    duration: Duration(milliseconds: 500),
                    child: Text('Green'),
                    style: _barChartLabel,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
