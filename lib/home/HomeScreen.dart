import 'package:flutter/material.dart';
import 'package:untitled20/home/hadeth/hadeth_tab.dart';
import 'package:untitled20/home/quran/quran_tab.dart';
import 'package:untitled20/home/radio/radio_tab.dart';
import 'package:untitled20/home/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
        image: AssetImage('asstes/images/main_bacground.jpg'),
        fit: BoxFit.fill,
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Islami'),
          ),
          bottomNavigationBar: BottomNavigationBar(
              onTap: (newlySelectedIndex) {
                setState(() {
                  selectIndex = newlySelectedIndex;
                });
              },
              currentIndex: selectIndex,
              items: [
                BottomNavigationBarItem(
                    backgroundColor: Theme.of(context).primaryColor,
                    icon: const ImageIcon(
                      AssetImage('asstes/images/quran.jpg'),
                    ),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage('asstes/images/quran-quran-svgrepo-com.jpg'),
                    ),
                    label: 'Hadeth'),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage('asstes/images/sebha.jpg'),
                    ),
                    label: 'Tasbeh'),
                BottomNavigationBarItem(
                    icon: const ImageIcon(
                      AssetImage('asstes/images/radio.jpg'),
                    ),
                    label: 'Radio'),
              ]),
          body: tabs[selectIndex]),
    );
  }

  List<Widget> tabs = [QureanTab(), HadethTab(), SebhaTab(), RadioTab()];
}
