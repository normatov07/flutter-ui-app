// import 'dart:html';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuildBottomNavigationBar extends StatefulWidget {
  const BuildBottomNavigationBar({Key? key,required this.onTap,required this.cIndex}) : super(key: key);

  final Function onTap;
  final String cIndex;

  @override
  _BuildBottomNavigationBarState createState() => _BuildBottomNavigationBarState();
}

class _BuildBottomNavigationBarState extends State<BuildBottomNavigationBar> {
  @override


  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.green,
      showUnselectedLabels: true,
      onTap: (index) => widget.onTap(index),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: 'home',
          backgroundColor: kPrimaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.manage_search_outlined),
          label: 'category',
          backgroundColor: kPrimaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wifi_outlined),
          label: 'lenta',
          backgroundColor: kPrimaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: 'basket',
          backgroundColor: kPrimaryColor,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline_outlined),
          label: 'account',
          backgroundColor: kPrimaryColor,
        ),
      ],
      currentIndex: int.parse(widget.cIndex),
    );
  }
}
