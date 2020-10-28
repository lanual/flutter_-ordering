import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/constants.dart';
import 'package:flutter_ordering_app/screens/details/components/item_image.dart';
import 'package:flutter_ordering_app/screens/details/components/order_button.dart';
import 'package:flutter_ordering_app/screens/details/components/title_price_rating.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(minHeight: size.height * 0.9),
          child: IntrinsicHeight(
            child: Column(
              children: [
                ItemImage(imageSrc: 'assets/images/burger.png'),
                Flexible(
                  child: ItemInfo(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          shopeName('McDonalds'),
          TitlePriceRating(
            name: 'Cheese Burger',
            numOfReviews: 24,
            onRatingChanged: (rating) {},
            price: 25,
            rating: 4,
          ),
          Text(
            ' et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.',
            style: TextStyle(height: 1.6),
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          OrderButton(
            size: size,
            press: () {},
          ),
        ],
      ),
    );
  }

  Row shopeName(String name) {
    return Row(
      children: [
        Icon(Icons.location_on, color: ksecondaryColor),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
