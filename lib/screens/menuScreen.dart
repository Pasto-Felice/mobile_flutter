import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/widgets/buttons.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';
import 'package:pasto_felice_mobile/widgets/navbar.dart';
import 'package:pasto_felice_mobile/widgets/screenTitle.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  final List<String> weekDays = [
    'LUN',
    'MAR',
    'MER',
    'GIO',
    'VEN',
    'SAB',
    'DOM'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 75),
            Expanded(
                child: Column(children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: ScreenTitle(),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 42,
                  decoration: BoxDecoration(
                      color: whites.shade300,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          spreadRadius: 5,
                          blurRadius: 30,
                          offset: const Offset(0, 4),
                        )
                      ]),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                        child: SizedBox(
                      child: Row(),
                    )),
                  ),
                ),
              ),
              const SizedBox(height: 25),
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
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  spreadRadius: 5,
                                  blurRadius: 20,
                                  offset: const Offset(0, 4),
                                )
                              ]),
                          child: Icon(
                            Icons.sync,
                            color: whites.shade500,
                          ),
                        )),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Container(
                        height: 165,
                        width: 165,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/img1.jpg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(150.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.15),
                              spreadRadius: 5,
                              blurRadius: 20,
                              offset: const Offset(0, 4),
                            )
                          ],
                          border: Border.all(
                            color: whites.shade300,
                            width: 4.0,
                          ),
                        ),
                      ),
                    )
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
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: 5,
                        blurRadius: 20,
                        offset: const Offset(0, 4),
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 36),
                  child: Column(
                    children: [
                      Text("NOME PIATTO", style: Theme.of(context).textTheme.displayMedium,),
                      const SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AntdIcons.outlined.clockCircle.svg(height: 24, color: secondary.shade400),
                              const SizedBox(width: 5,),
                              Text("2h", style: Theme.of(context).textTheme.bodySmall,)
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AntdIcons.outlined.fire.svg(height: 24, color: secondary.shade400),
                              const SizedBox(width: 5,),
                              Text("1021 kJ / 244 cal", style: Theme.of(context).textTheme.bodySmall,)
                            ],
                          ),
                        ],
                      ),
                      Divider(color: blacks.shade400, height: 30,),
                      const SizedBox(
                        height: 125,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sale"),
                                Text("10g")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Uova"),
                                Text("x2")
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Spaghetti"),
                                Text("130g")
                              ],
                            )
                          ],
                        ),
                      ),
                      Button(text: "FINITO!", callbackFunction: (){})
                    ],
                  ),
                ),
              )
            ])),
            const Navbar()
          ],
        ),
      ),
    );
  }
}
