import 'package:flutter/material.dart';

import '../../../components/rounded_icon_button.dart';
import '../../../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'search',
                    hintStyle:
                    TextStyle(color: kTextLightColor, fontSize: 12),
                    filled: true,
                    fillColor: kWhite,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(30)),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 13, vertical: 8),
                    suffixIcon:
                    Icon(Icons.search, color: kPrimaryColor)),
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
          ),
          SizedBox(
            width: kDefaultPadding / 2,
          ),
          RoundedIconButton(
            onTab: () {},
            icon: Icons.filter_list,
          ),
        ],
      ),
    );
  }
}
