import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled20/sura_details/sura_detailes_args.dart';
import 'package:untitled20/sura_details/varse_widget.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'sura_detailes';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verse = [];

  @override
  Widget build(BuildContext context) {
    //
    SuraDetailesScreenArgs args =
        (ModalRoute.of(context)?.settings.arguments) as SuraDetailesScreenArgs;
    if (verse.isEmpty) readfile(args.index + 1); //non_bolcking

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
          body: verse.isEmpty
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : Card(
                  elevation: 12,
                  margin: EdgeInsets.symmetric(horizontal: 24, vertical: 64),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: ListView.separated(
                    itemBuilder: (_, index) {
                      return VarseWidget(verse[index], index + 1);
                    },
                    itemCount: verse.length,
                    separatorBuilder: (_, __) {
                      return Container(
                        color: Theme.of(context).primaryColor,
                        height: 1,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 64),
                      );
                    },
                  ),
                ),
        ));
  }

  //bolcked
  void readfile(int fileIndex) async {
    String fileContent =
        await rootBundle.loadString('asstes/files/$fileIndex.txt');
    List<String> linse = fileContent.trim().split('/n');
    setState(() {
      verse = linse;
    });
  }
}
