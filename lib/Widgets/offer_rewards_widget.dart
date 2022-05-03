import 'package:flutter/material.dart';
import 'package:flutter_assignment/constraints/styles.dart';

class OfferRewardsRef extends StatefulWidget {
  const OfferRewardsRef({Key? key}) : super(key: key);

  @override
  State<OfferRewardsRef> createState() => _OfferRewardsRefState();
}

class _OfferRewardsRefState extends State<OfferRewardsRef> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 16),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              height: 75,
              padding: const EdgeInsets.all(5),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue[500],
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.offline_pin_rounded,
                      color: Colors.white,
                      size: 36,
                    ),
                    Text(
                      "Offers",
                      style: ThemeStyles.fontSizeNormalWhite,
                    )
                  ]),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              padding: const EdgeInsets.all(5),
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue[500],
              ),
              child: Column(children: [
                const Icon(
                  Icons.offline_pin_rounded,
                  color: Colors.white,
                  size: 36,
                ),
                Text(
                  "Rewards",
                  style: ThemeStyles.fontSizeNormalWhite,
                )
              ]),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(5),
              height: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue[500],
              ),
              child: Column(children: [
                const Icon(
                  Icons.offline_pin_rounded,
                  size: 36,
                  color: Colors.white,
                ),
                Text(
                  "Refer & Earn",
                  style: ThemeStyles.fontSizeNormalWhite,
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
