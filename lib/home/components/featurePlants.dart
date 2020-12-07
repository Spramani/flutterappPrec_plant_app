import 'package:flutter/material.dart';

import '../../constants.dart';

class FeaturePlans extends StatelessWidget {
  const FeaturePlans({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlanCard(
            images: "assets/images/bottom_img_1.png",
            press: () {},
          ),
          FeaturePlanCard(
            images: "assets/images/bottom_img_2.png",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturePlanCard extends StatelessWidget {
  const FeaturePlanCard({
    Key key,
    this.images,
    this.press,
  }) : super(key: key);

  final String images;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 4),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(images),
          ),
        ),
      ),
    );
  }
}
