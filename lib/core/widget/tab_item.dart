import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final IconData iconData;
  final String label;
  final double space;

  const TabItem({
    Key? key,
    required this.iconData,
    required this.label,
    this.space = 8,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(space >= 0, "Space cant be smaller then zero.");

    return Tab(
      child: Row(
        children: [
          Icon(iconData, size: 15),
          if (space > 0) ...{SizedBox(width: space)},
          Text(label),
        ],
      ),
    );
  }
}
