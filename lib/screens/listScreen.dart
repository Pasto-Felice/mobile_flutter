import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/widgets/boxShadow.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';
import 'package:pasto_felice_mobile/widgets/drawer.dart';
import 'package:pasto_felice_mobile/widgets/navbar.dart';
import 'package:pasto_felice_mobile/widgets/screenTitle.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  // Create a key
  final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      body: Column(
        children: [
          const SizedBox(height: 50),
          Expanded(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: ScreenTitle(
                drawerKey: _key,
                title: "LISTA",
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: [
                      Text(
                        "DA COMPRARE",
                        style: Theme.of(context).textTheme.displayMedium,
                      )
                    ]),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [CustomShadow.primaryShadow],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: blacks.shade300))),
                            child: const Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("Nome"), Text("Quantità")],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const ListItemToBuy(
                              label: "Uova", quantity: "3 uova"),
                          const SizedBox(height: 10),
                          const ListItemToBuy(
                              label: "Latte", quantity: "2 bottiglie"),
                          const SizedBox(height: 10),
                          const ListItemToBuy(
                              label: "Pesce spada", quantity: "250g")
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: [
                      Text(
                        "COMPRATI",
                        style: Theme.of(context).textTheme.displayMedium,
                      )
                    ]),
                  ),
                  const SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [CustomShadow.primaryShadow],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: blacks.shade300))),
                            child: const Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("Nome"), Text("Quantità")],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const ListItemToBuy(
                              label: "Uova", quantity: "3 uova"),
                          const SizedBox(height: 10),
                          const ListItemToBuy(
                              label: "Latte", quantity: "2 bottiglie"),
                          const SizedBox(height: 10),
                          const ListItemToBuy(
                              label: "Pesce spada", quantity: "250g")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ])),
          const Navbar()
        ],
      ),
      endDrawer: const DrawerCustom(),
    );
  }
}

class ListItemToBuy extends StatelessWidget {
  final String label, quantity;
  const ListItemToBuy({super.key, required this.label, required this.quantity});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.radio_button_off,
                  color: primary.shade600,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(label)
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [Text(quantity)],
            )
          ],
        ));
  }
}
