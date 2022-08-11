import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/category_model.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  @override
  int _activeCategory = 0;

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 36),
      child: SizedBox(
        height: 50,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, index) {
            return CategoryPhill(
              onTap: () {
                setState(() {
                  this._activeCategory = demoCategories[index].id;
                });
              },
              category: demoCategories[index],
              isAcive: demoCategories[index].id == _activeCategory,
            );
          },
          itemCount: demoCategories.length,
        ),
      ),
    );
  }
}

class CategoryPhill extends StatelessWidget {
  const CategoryPhill({
    Key? key,
    required this.onTap,
    required this.category,
    this.isAcive = false,
  }) : super(key: key);

  final GestureTapCallback onTap;
  final CategoryModel category;
  final bool isAcive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // padding:padding,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
        margin: EdgeInsets.only(right: 10, top: 10, bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: isAcive ? kPrimaryColor : kWhite,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.12),
                // offset: const Offset(0, 1),
                blurRadius: 10,
              ),
            ]),
        child: Text(this.category.name,
            style: TextStyle(
                fontSize: 14,
                color: isAcive ? kWhite : kTextLightColor,
                fontWeight: FontWeight.w500)),
      ),
    );
  }
}
