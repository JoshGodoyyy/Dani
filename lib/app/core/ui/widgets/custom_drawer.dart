import 'package:flutter/material.dart';

import '../styles/text_styles.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: 290,
        color: const Color(0xff17203a),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.white24,
                  child: Icon(Icons.person_3_rounded),
                ),
                title: Text(
                  'Josué Lima',
                  style: TextStyles.instance.textRegular.copyWith(fontSize: 20),
                ),
                subtitle: Text(
                  'josueaugusto@live.com',
                  style: TextStyles.instance.textRegular,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 24,
                  top: 32,
                  bottom: 16,
                ),
                child: Text(
                  'NAVEGAR',
                  style: TextStyles.instance.textRegular,
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Divider(),
              ),
              ListTile(
                leading: const Icon(
                  Icons.home_filled,
                  color: Colors.white24,
                ),
                title: Text(
                  'Início',
                  style: TextStyles.instance.textRegular,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.receipt_long,
                  color: Colors.white24,
                ),
                title: Text(
                  'Relatório',
                  style: TextStyles.instance.textRegular,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.help,
                  color: Colors.white24,
                ),
                title: Text(
                  'Ajuda',
                  style: TextStyles.instance.textRegular,
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.info,
                  color: Colors.white24,
                ),
                title: Text(
                  'Sobre',
                  style: TextStyles.instance.textRegular,
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
