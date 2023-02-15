import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:details/screens/center/item.dart';
import 'package:details/pages/item.dart';
import 'package:flutter/material.dart';

import '../../widget/home app bar.dart';

class CenterPage extends StatefulWidget {
  CenterPage({super.key});
  _CenterPageState createState() => _CenterPageState();
}

class _CenterPageState extends State<CenterPage> {
  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
/*  Container(
            color: Colors.blueAccent,
            child: Center(
              child: _widgetOptions.elementAt(_selectedIndex),
            )*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBer(),
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 2000,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: const Text(
                        "ERCHAD",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0XFF4C53A5),
                        ),
                      ),
                    ),
                    const Items(),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        onTap: _onItemSelected,
        height: 70,
        color: const Color.fromARGB(255, 4, 72, 77), //const Color(0xff4c53a5),
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          ),
          Icon(
            Icons.home,
            size: 30,
            color: Colors.black,
          )
        ],
      ),
    );
  }

  final GlobalKey _bottomNavigationKey = GlobalKey();
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const Text(
      'Home',
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
    const Text(
      'Search',
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
    const Text(
      'Add',
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
    const Text(
      'Profile',
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
    const Text(
      'Setting',
      style: TextStyle(fontSize: 25, color: Colors.black),
    ),
  ];

  //selection

}
