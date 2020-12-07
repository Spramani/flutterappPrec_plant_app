import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/home/components/featurePlants.dart';
import 'package:plant_app/home/components/recommanPlans.dart';
import 'package:plant_app/home/components/title_with_more_btn.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommanded",
            press: () {},
          ),
          RecommandPlans(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturePlans(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
