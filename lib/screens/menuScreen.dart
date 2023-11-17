import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/widgets/circularImg.dart';
import 'package:pasto_felice_mobile/widgets/boxShadow.dart';
import 'package:pasto_felice_mobile/widgets/buttons.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';
import 'package:pasto_felice_mobile/widgets/drawer.dart';
import 'package:pasto_felice_mobile/widgets/navbar.dart';
import 'package:pasto_felice_mobile/widgets/screenTitle.dart';
import 'package:pasto_felice_mobile/widgets/scrollSelection.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _key,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Expanded(
                child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: ScreenTitle(
                  drawerKey: _key,
                  title: "MENU",
                ),
              ),
              const SizedBox(height: 25),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: ScrollSelection()),
              const SizedBox(height: 30),
              Text(
                "PRANZO",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 180,
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                        top: 0,
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                              color: whites.shade300,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [CustomShadow.primaryShadow]),
                          child: IconButton(
                            onPressed: () {},
                            alignment: Alignment.center,
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.sync,
                              color: whites.shade500,
                            ),
                          ),
                        )),
                    const Positioned(top: 10, left: 10, child: CircularImg())
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Container(
                height: 308,
                width: 308,
                decoration: BoxDecoration(
                    color: whites.shade300,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [CustomShadow.primaryShadow]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 36),
                  child: Column(
                    children: [
                      Text(
                        "NOME PIATTO",
                        style: Theme.of(context).textTheme.displayMedium,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AntdIcons.outlined.clockCircle
                                  .svg(height: 24, color: secondary.shade400),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "2h",
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AntdIcons.outlined.fire
                                  .svg(height: 24, color: secondary.shade400),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "1021 kJ / 244 cal",
                                style: Theme.of(context).textTheme.bodySmall,
                              )
                            ],
                          ),
                        ],
                      ),
                      Divider(
                        color: blacks.shade400,
                        height: 30,
                      ),
                      const SizedBox(
                        height: 125,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("Sale"), Text("10g")],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("Uova"), Text("x2")],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("Spaghetti"), Text("130g")],
                            )
                          ],
                        ),
                      ),
                      Button(text: "FINITO!", callbackFunction: () {})
                    ],
                  ),
                ),
              )
            ])),
            const Navbar()
          ],
        ),
        endDrawer: const DrawerCustom());
  }
}
