import 'package:dani/app/core/ui/widgets/custom_drawer.dart';
import 'package:dani/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDrawerOpenned = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff17203a),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 200),
            curve: Curves.fastOutSlowIn,
            width: 290,
            left: isDrawerOpenned ? 0 : -290,
            height: MediaQuery.of(context).size.height,
            child: const MyDrawer(),
          ),
          Transform.translate(
            offset: Offset(isDrawerOpenned ? 290 : 0, 0),
            child: Transform.scale(
              scale: isDrawerOpenned ? 0.8 : 1,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(isDrawerOpenned ? 10 : 0),
                ),
                child: InkWell(
                  onTap: isDrawerOpenned
                      ? () {
                          setState(() {
                            isDrawerOpenned = !isDrawerOpenned;
                          });
                        }
                      : null,
                  child: const MainPage(),
                ),
              ),
            ),
          ),
          Visibility(
            visible: !isDrawerOpenned,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(24),
                  ),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isDrawerOpenned = !isDrawerOpenned;
                      });
                    },
                    child: Container(
                      color: Colors.transparent,
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
