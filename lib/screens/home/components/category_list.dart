import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/screens/home/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryItem(
            title: 'Combo Meal',
            isActive: true,
            onTap: () {},
          ),
          CategoryItem(
            title: 'Chicken',
            onTap: () {},
          ),
          CategoryItem(
            title: 'Hamburger',
            onTap: () {},
          ),
          CategoryItem(
            title: 'Salad',
            onTap: () {},
          ),
          CategoryItem(
            title: 'Salad',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
