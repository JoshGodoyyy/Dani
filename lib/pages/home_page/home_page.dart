import 'package:dani/app/core/ui/widgets/balance.dart';
import 'package:dani/app/core/ui/widgets/custom_app_bar.dart';
import 'package:dani/app/core/ui/widgets/list_bills.dart';
import 'package:flutter/material.dart';

import '../../app/core/ui/widgets/icon_bottom_app_bar.dart';
import '../../app/core/ui/widgets/list_statement.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final screens = const <Widget>[
    BillsList(),
    StatementList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: MyAppBar(),
      body: Column(
        children: [
          const BalanceWidget(),
          screens[_selectedIndex],
        ],
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconBottomAppBar(
            text: 'Contas',
            icon: Icons.payment,
            selected: _selectedIndex == 0,
            onPressed: () {
              setState(() {
                _selectedIndex = 0;
              });
            },
          ),
          IconBottomAppBar(
            text: 'Extrato',
            icon: Icons.history_outlined,
            selected: _selectedIndex == 1,
            onPressed: () {
              setState(() {
                _selectedIndex = 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
