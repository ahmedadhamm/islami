import 'package:flutter/material.dart';
import 'package:untitled20/sura_details/sura_detailes_args.dart';
import 'package:untitled20/sura_details/sura_detailes_screen.dart';

class SureTitleWidget extends StatelessWidget {
  String titel;
  int index;

  SureTitleWidget(this.titel, this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetailsScreen.routeName,
          arguments: SuraDetailesScreenArgs(
            name: titel,
            index: index,
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        child: Text(
          titel,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
