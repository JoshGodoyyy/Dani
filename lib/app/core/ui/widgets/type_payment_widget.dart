import 'package:flutter/material.dart';

import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class TypePaymentWidget extends StatelessWidget {
  final String label;
  final Function() onTap;
  final bool isSelected;

  const TypePaymentWidget({
    super.key,
    required this.label,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected
                ? ColorsApp.instance.primaryColor
                : ColorsApp.instance.backgroundColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyles.instance.textRegular,
            ),
          ),
        ),
      ),
    );
  }
}
