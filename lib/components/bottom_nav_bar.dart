import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottonNavBar extends StatelessWidget {
  const BottonNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: isPortrait ? size.height * 0.07 : size.width * 0.07,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: SvgPicture.asset('assets/icons/home.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/Following.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/Glyph.svg'),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset('assets/icons/person.svg'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
