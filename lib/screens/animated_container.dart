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
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AnimatedContainerScreen.SCREEN_TITLE,
        isHome: false,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            
          ],
        ),
      ),
    );
  }
}