import 'package:flutter/material.dart';
import 'package:untitled20/sura_details/sura_detailes_args.dart';

class SuraDetailsScreen extends StatelessWidget {
  static const String routeName = 'sura_detailes';

  @override
  Widget build(BuildContext context) {
    //
    SuraDetailesScreenArgs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailesScreenArgs;
    print(args);

    return Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage('asstes/images/main_bacground.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
        ));
  }
}
