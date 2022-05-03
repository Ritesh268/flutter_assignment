// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class IconContainer extends StatefulWidget {
  final borderColor, icon, iconColor;
  const IconContainer(
      {Key? key,
      required this.borderColor,
      required this.icon,
      required this.iconColor})
      : super(key: key);

  @override
  State<IconContainer> createState() => _IconContainerState();
}

class _IconContainerState extends State<IconContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 2, color: widget.borderColor)),
        child: Icon(
          widget.icon,
          color: widget.iconColor,
        ));
  }
}
