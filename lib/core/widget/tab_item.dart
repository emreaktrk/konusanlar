import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final IconData iconData;
  final String label;

  const TabItem({
    Key? key,
    required this.iconData,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        children: [
          Icon(iconData, size: 15),
          Text(label),
        ],
      ),
    );
  }
}
