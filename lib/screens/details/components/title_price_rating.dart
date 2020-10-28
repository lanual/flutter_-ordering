import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TitlePriceRating extends StatelessWidget {
  final int price, numOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChanged;

  const TitlePriceRating({
    Key key,
    @required this.price,
    @required this.numOfReviews,
    @required this.rating,
    @required this.name,
    @required this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SmoothStarRating(
                    borderColor: kPrimaryColor,
                    rating: rating,
                    onRated: onRatingChanged,
                  ),
                  SizedBox(width: 10),
                  Text('$numOfReviews Reviews'),
                ],
              ),
            ],
          ),
        ),
        priceTag(context, price: price),
      ]),
    );
  }

  ClipPath priceTag(BuildContext context, {int price}) {
    return ClipPath(
      clipper: PriceCliper(),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        height: 65,
        width: 65,
        color: kPrimaryColor,
        alignment: Alignment.topCenter,
        child: Text(
          "\$$price",
          //¿Cual es la diferencia?
          /*style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),*/

          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}

class PriceCliper extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
