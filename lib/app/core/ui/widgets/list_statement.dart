import 'package:dani/app/core/ui/widgets/bill_item.dart';
import 'package:flutter/material.dart';

class StatementList extends StatefulWidget {
  const StatementList({super.key});

  @override
  State<StatementList> createState() => _StatementListState();
}

class _StatementListState extends State<StatementList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: const [
          BillItem(
            text: 'Restaurante',
            date: '07/05/2023',
            value: 27.57,
          ),
        ],
      ),
    );
  }
}
