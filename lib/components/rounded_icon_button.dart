
import 'package:flutter/material.dart';
import '../constants.dart';


class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({Key? key,
    required this.onTab,
    required this.icon
  }) : super(key: key);

  final GestureTapCallback onTab;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: this.onTab,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kWhite,
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.12),
                  offset: const Offset(0, 1),
                  blurRadius: 10
              )
            ]),
        alignment: Alignment.center,
        child: Icon(this.icon,color: Colors.red),
      ),
    );
  }
}
