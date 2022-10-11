import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AMPM extends StatelessWidget {
  final bool itsAm;
  AMPM({required this.itsAm});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        itsAm == true ? 'AM' : 'PM',
        style: TextStyle(
            fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
      )),
    );
  }
}
