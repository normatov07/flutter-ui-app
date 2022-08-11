import 'package:flutter/material.dart';
import 'package:flutter_test_1/constants.dart';

AppBar buildAppBar({
  Widget? title,
  List<Widget>? actions,
}) {
  return AppBar(
    elevation: 0,
    title: title,
    actions: actions,
    automaticallyImplyLeading: false,
    titleSpacing: 0,
    backgroundColor: kPrimaryColor,
  );
}
