import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  final IconData iconWidget;
  final Color iconColor;

  const IconWidget(this.iconWidget, {Key? key, this.iconColor = Colors.white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(iconWidget, color: iconColor);
  }
}
