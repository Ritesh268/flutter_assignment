import 'package:flutter/material.dart';
import 'package:flutter_assignment/Widgets/sponsored_container_icon_widget.dart';
import 'package:flutter_assignment/constraints/styles.dart';

class SponsoredContainer extends StatefulWidget {
  const SponsoredContainer({Key? key}) : super(key: key);

  @override
  State<SponsoredContainer> createState() => _SponsoredContainerState();
}

class _SponsoredContainerState extends State<SponsoredContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
      decoration: BoxDecoration(
          color: ThemeStyles.whiteColor,
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16, top: 16),
            alignment: Alignment.centerLeft,
            child: Text(
              "Sponsored Links",
              style: ThemeStyles.fontSizeNormalBlack,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
            alignment: Alignment.centerLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                SponsoredLinks(iconImage: Icons.swipe, textValue: "Swiggy"),
                SponsoredLinks(iconImage: Icons.flight, textValue: "ixigo"),
                SponsoredLinks(iconImage: Icons.flip, textValue: "Flipkart"),
                SponsoredLinks(
                    iconImage: Icons.sports_baseball_rounded,
                    textValue: "My11Cricle")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
