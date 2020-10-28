import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/constants.dart';
import 'package:flutter_svg/svg.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChanged;

  SearchBox({@required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(58),
        border: Border.all(
          color: ksecondaryColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset('assets/icons/search.svg'),
          hintText: 'Search Here',
          hintStyle: TextStyle(color: ksecondaryColor),
        ),
      ),
    );
  }
}
