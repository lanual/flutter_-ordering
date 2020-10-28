import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  final String imageSrc;

  ItemImage({@required this.imageSrc});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Image.asset(
      imageSrc,
      width: isPortrait ? double.infinity : size.width * 0.8,
      height: isPortrait ? size.height * 0.25 : size.height * 0.5,
      fit: BoxFit.fill,
    );
  }
}
