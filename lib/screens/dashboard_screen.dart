// Copyright 2019 Joshua de Guzman (https://joshuadeguzman.github.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_implicit_animations/screens/screens.dart';
import 'package:flutter_implicit_animations/widgets/appbar.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DashboardScreenState();
  }
}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Flutter Animation Widgets",
        isHome: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                ),
                Padding(padding: EdgeInsets.only(bottom: 10)),
                _buildWidgetSelectorButton(
                  AnimatedContainerScreen.SCREEN_TITLE,
                  AnimatedContainerScreen(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetSelectorButton(String title, Widget route) {
    return Row(
      children: <Widget>[
        Expanded(
          child: OutlineButton(
            highlightElevation: 10,
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
            color: Colors.blue,
            highlightColor: Colors.blueAccent,
            highlightedBorderColor: Colors.blueAccent,
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => route,
                  ),
                ),
            child: Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
