import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/constants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Function onTap;
  final bool isActive;

  const CategoryItem({
    Key key,
    this.isActive = false,
    @required this.onTap,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Text(
              title,
              style: isActive
                  ? TextStyle(fontWeight: FontWeight.bold)
                  : TextStyle(fontSize: 12),
            ),
            if (isActive)
              Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
