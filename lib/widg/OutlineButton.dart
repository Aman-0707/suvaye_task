import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
   Color? backgroundColor;
   String text;
   IconData? iconn;

  AppButtons({
    super.key,
    this.iconn,
    this.text = 'Hello',
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: backgroundColor!, width: 1.0),
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: const EdgeInsets.only(left: 20),
            margin: const EdgeInsets.only(left: 10,right: 20),
        child: Row(
          children: [
            Icon(iconn),
            SizedBox(width: 10,),
            Text(text),
          ],
        ),
      ),
    );
  }
}
