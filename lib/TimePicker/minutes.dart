import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyMinutes extends StatelessWidget {
  int minutes;
  MyMinutes({required this.minutes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        child: Center(
          child: Text(
            minutes < 10 ? '0' + minutes.toString() : minutes.toString(),
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
