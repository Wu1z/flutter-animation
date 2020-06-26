
import 'package:flare_flutter/flare_cache_builder.dart';
import 'package:flare_flutter/provider/asset_flare.dart';
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/services.dart';
import '../values/app_flares.dart';
import '../components/action_button.dart';


class Home extends StatelessWidget {

  final String author = 'Walter Merscher';
  final _style = TextStyle(fontSize: 12, color: Colors.black, decoration: TextDecoration.none);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: <Widget>[
          FlareActor(
            AppFlares.white,
            animation: 'Background Loop',
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ActionButton(text: 'SUCCESS', status: true),
              ActionButton(text: 'ERROR', status: false),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text('author = $author;', style: _style),
            ),
          ),
        ],
      ),
    );
  }
}

