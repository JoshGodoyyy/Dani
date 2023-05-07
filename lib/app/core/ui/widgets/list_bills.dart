import 'package:dani/app/core/ui/widgets/fixed_item.dart';
import 'package:flutter/material.dart';

class BillsList extends StatefulWidget {
  const BillsList({super.key});

  @override
  State<BillsList> createState() => _BillsListState();
}

class _BillsListState extends State<BillsList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          FixedItem(
            text: 'Parcela carro',
            date: '10/05/2023',
            value: 1014.16,
          )
        ],
      ),
    );
  }
}
