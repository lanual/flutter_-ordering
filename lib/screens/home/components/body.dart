import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/components/search_box.dart';

import 'package:flutter_ordering_app/screens/home/components/category_list.dart';

import 'discount_card.dart';
import 'item_list.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SearchBox(onChanged: (value) {}),
            CategoryList(),
            ItemList(),
            DiscountCard(),
          ],
        ),
      ),
    );
  }
}
