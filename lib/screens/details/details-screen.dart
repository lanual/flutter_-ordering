import 'package:flutter/material.dart';
import 'package:flutter_ordering_app/constants.dart';
import 'package:flutter_ordering_app/screens/details/components/body.dart';

import 'components/app_bar.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}
