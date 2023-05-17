import 'package:dani/app/core/ui/styles/colors_app.dart';
import 'package:dani/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

class BalanceWidget extends StatefulWidget {
  final Function() onTap;
  const BalanceWidget({
    super.key,
    required this.onTap,
  });

  @override
  State<BalanceWidget> createState() => _BalanceWidgetState();
}

class _BalanceWidgetState extends State<BalanceWidget> {
  final double padding = 16.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            ColorsApp.instance.startColor,
            Colors.black87,
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Boa noite!',
              style: TextStyles.instance.textRegular.copyWith(fontSize: 14),
            ),
            const SizedBox(height: 10),
            Text(
              'Seu saldo:',
              style: TextStyles.instance.textBold.copyWith(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'R\$ 2.380,00',
                  style: TextStyles.instance.textBold.copyWith(fontSize: 32),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Entradas:',
                      style: TextStyles.instance.textRegular,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'R\$ 7.530,57',
                      style: TextStyles.instance.textRegular,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Saídas:',
                      style: TextStyles.instance.textRegular,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'R\$ 2.327,00',
                      style: TextStyles.instance.textRegular,
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: widget.onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsApp.instance.startColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      'Nova entrada',
                      style: TextStyles.instance.textRegular
                          .copyWith(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
