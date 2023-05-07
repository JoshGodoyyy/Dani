import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../styles/colors_app.dart';
import '../styles/text_styles.dart';

class FixedItem extends StatelessWidget {
  final String text;
  final String date;
  final double value;

  const FixedItem({
    super.key,
    required this.text,
    required this.date,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: null,
              backgroundColor: Colors.blue.shade900,
              foregroundColor: Colors.white,
              icon: Icons.check,
              label: 'Pago',
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            gradient: LinearGradient(
              colors: [
                ColorsApp.instance.startColor,
                Colors.black,
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const Icon(
                  Icons.car_rental,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: TextStyles.instance.textRegular
                          .copyWith(fontSize: 18),
                    ),
                    Text(
                      date,
                      style: TextStyles.instance.textRegular
                          .copyWith(fontSize: 14),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  'R\$ $value',
                  style: TextStyles.instance.textRegular.copyWith(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
