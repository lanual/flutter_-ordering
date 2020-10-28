import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/constants.dart';
import 'package:flutter_svg/svg.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset('assets/icons/menu.svg'),
      onPressed: () {},
    ),
    title: RichText(
      //textAlign: TextAlign.end,
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(text: 'Punk', style: TextStyle(color: ksecondaryColor)),
          TextSpan(text: 'Food', style: TextStyle(color: kPrimaryColor)),
        ],
      ),
    ),
    actions: [
      IconButton(
          icon: SvgPicture.asset('assets/icons/notification.svg'),
          onPressed: () {}),
    ],
  );
}
