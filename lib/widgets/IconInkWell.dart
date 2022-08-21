import 'package:flutter/material.dart';

class IconInkWell extends StatelessWidget {
  final VoidCallback func;
  final Widget iconWidget;

  const IconInkWell({Key? key, required this.func, required this.iconWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: func,
      child: iconWidget,
    );
  }
}
