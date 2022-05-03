// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_assignment/constraints/styles.dart';

class SponsoredLinks extends StatefulWidget {
  final iconImage, textValue;
  const SponsoredLinks({Key? key, this.iconImage, this.textValue})
      : super(key: key);

  @override
  State<SponsoredLinks> createState() => _SponsoredLinksState();
}

class _SponsoredLinksState extends State<SponsoredLinks> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(width: 1)),
              child: IconButton(
                icon: Icon(
                  widget.iconImage,
                  color: ThemeStyles.blackColor,
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(widget.textValue)
          ],
        )
      ],
    );
  }
}
