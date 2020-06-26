import 'package:animationApp/view/animation_view.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final bool status;

  ActionButton({this.text, this.status});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4)
        ),
        color: status ? Colors.green : Colors.red,
        elevation: 10.0,
        textColor: Colors.black,
        child: Text(
          text,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.pushNamed(context, '/status', arguments: status);
        },
      ),
    );
  }
}
