import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import '../values/app_flares.dart';

class SuccessOrError extends StatelessWidget {
  final _ok = AppFlares.ok;
  final _error = AppFlares.fail;
  final String _okAnimation = 'Untitled';
  final String _errorAnimation = 'Untitled';

  @override
  Widget build(BuildContext context) {
    final bool status = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('status: $status'),
        backgroundColor: Colors.white,
        elevation: 0.0
      ),

      body: Container(
        color: Colors.white,
        child: FlareActor(status ? _ok : _error, animation: status ? _okAnimation : _errorAnimation, )
      ),
    );
  }
}
