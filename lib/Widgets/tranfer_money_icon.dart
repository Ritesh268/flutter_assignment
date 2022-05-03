// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_assignment/constraints/styles.dart';

class TransferMoneyIconContainer extends StatefulWidget {
  final iconImage, textValue;
  const TransferMoneyIconContainer({Key? key, this.iconImage, this.textValue})
      : super(key: key);

  @override
  State<TransferMoneyIconContainer> createState() =>
      _TransferMoneyIconContainerState();
}

class _TransferMoneyIconContainerState
    extends State<TransferMoneyIconContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 16, right: 16),
      child: Row(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: ThemeStyles.darkBlueColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: IconButton(
                  icon: Icon(
                    widget.iconImage,
                    color: ThemeStyles.whiteColor,
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
      ),
    );
  }
}
