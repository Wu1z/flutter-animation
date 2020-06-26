// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:animationApp/view/animation_view.dart';
import 'package:animationApp/view/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'view/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark
    ));

    return MaterialApp(
      title: 'animateStatus',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/home': (context) => Home(),
        '/status': (context) => SuccessOrError()
      }
    );
  }
}
