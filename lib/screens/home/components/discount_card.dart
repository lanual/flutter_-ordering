import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/constants.dart';
import 'package:flutter_svg/svg.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            "Offers & Discounts",
            style: TextStyle(fontWeight: FontWeight.bold, color: kPrimaryColor),
          ),
          Container(
            //margin: EdgeInsets.symmetric(vertical: 20),
            // height: size.height * 0.2,
            //width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/beyond-meat-mcdonalds.png'),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFF961F).withOpacity(0.6),
                    kPrimaryColor.withOpacity(0.7),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: SvgPicture.asset('assets/icons/macdonalds.svg'),
                    ),
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.white),
                          children: [
                            TextSpan(
                              text: "Get Discount of\n",
                              style: TextStyle(fontSize: 16),
                            ),
                            TextSpan(
                              text: "30%\n",
                              style: TextStyle(fontSize: 43),
                            ),
                            TextSpan(
                              text:
                                  "at McDonald's on your first order and Instant cashback",
                              style: TextStyle(fontSize: 11),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
