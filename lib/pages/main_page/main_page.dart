import 'package:flutter/material.dart';

import '../../app/core/ui/widgets/balance.dart';
import '../../app/core/ui/widgets/custom_app_bar.dart';
import '../../app/core/ui/widgets/icon_bottom_app_bar.dart';
import '../../app/core/ui/widgets/list_bills.dart';
import '../../app/core/ui/widgets/list_statement.dart';
import '../new_payment/new_payment.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
          BalanceWidget(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const NewPayment(),
              ),
            ),
          ),
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
