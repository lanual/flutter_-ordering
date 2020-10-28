import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key key,
    @required this.size,
    @required this.press,
  }) : super(key: key);

  final Size size;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(20),
      width: size.width * 0.8,
      //height: size.height * 0.05,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/bag.svg'),
                SizedBox(width: 15),
                Text(
                  'Order Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
