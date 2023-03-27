import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      alignment: Alignment.center,
      child: Text(
        "End of questions !",
        textAlign: TextAlign.center,
      ),
    );
  }
}
