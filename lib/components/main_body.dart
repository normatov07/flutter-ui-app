import 'package:flutter/material.dart';

import '../constants.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    Key? key,
    required this.child,
    this.padding = const EdgeInsets.only(top: 40),
  }) : super(key: key);

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhite,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(20)),
        ),
        child: child);
  }
}
