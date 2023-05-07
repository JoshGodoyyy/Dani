import 'package:flutter/material.dart';

import '../styles/text_styles.dart';

class IconBottomAppBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const IconBottomAppBar({
    super.key,
    required this.text,
    required this.icon,
    required this.selected,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 25,
              color: selected ? Colors.blue.shade900 : Colors.white,
            ),
            Text(
              text,
              style: TextStyles.instance.textRegular.copyWith(
                color: selected ? Colors.blue.shade900 : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
