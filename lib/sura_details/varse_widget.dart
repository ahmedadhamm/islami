import 'package:flutter/material.dart';

class VarseWidget extends StatelessWidget {
  String content;
  int index;

  VarseWidget(this.content, this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 18, horizontal: 8),
      alignment: Alignment.center,
      child: Text(
        '$content, [$index]',
        // textDirection: TextDecoration.rtl,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
