import 'package:flutter/material.dart';

import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class BuildTextFormField extends StatelessWidget {
  final String title;
  final Widget? prefix;
  final TextEditingController controller;
  final int lines;
  final TextInputType keyboardType;

  const BuildTextFormField({
    super.key,
    required this.title,
    required this.prefix,
    required this.controller,
    required this.lines,
    required this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            title,
            style: TextStyles.instance.textRegular.copyWith(
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            color: ColorsApp.instance.primaryColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              keyboardType: keyboardType,
              controller: controller,
              maxLines: lines,
              style: TextStyles.instance.textRegular,
              decoration: InputDecoration(
                icon: prefix,
                border: const OutlineInputBorder(borderSide: BorderSide.none),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16)
      ],
    );
  }
}
