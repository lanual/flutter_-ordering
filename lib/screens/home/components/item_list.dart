import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/screens/details/details-screen.dart';

import 'item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ItemCard(
            title: 'Burger & Beer',
            shopName: "MacDonald's",
            svg: 'assets/icons/burger_beer.svg',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            title: 'Burger & Beer',
            shopName: "Wendys",
            svg: 'assets/icons/chinese_noodles.svg',
            press: () {},
          ),
          ItemCard(
            title: 'Burger & Beer',
            shopName: "MacDonald's",
            svg: 'assets/icons/burger_beer.svg',
            press: () {},
          ),
        ],
      ),
    );
  }
}
