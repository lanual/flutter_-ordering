import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar detailsAppBar() {
  return AppBar(
    elevation: 0,
    actions: [
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/share.svg'),
      ),
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/more.svg'),
      ),
    ],
    leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.arrow_back, color: Colors.white),
    ),
  );
}
