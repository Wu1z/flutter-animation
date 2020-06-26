import 'package:animationApp/view/home.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flare_flutter/flare_actor.dart';
import '../values/app_flares.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 5,
          backgroundColor: Colors.white,
          loaderColor: Colors.transparent,
          navigateAfterSeconds: Home(),
        ),
        Center(
          child: FlareActor(AppFlares.load, animation: 'Untitled'),
        ),
      ],
    );
  }
}
