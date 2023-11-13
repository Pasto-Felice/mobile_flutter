import 'package:flutter/material.dart';
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
              child: ScreenTitle(drawerKey: _key, title: "LISTA",),
            ),
          ])),
          const Navbar()
        ],
      ),
      endDrawer: const DrawerCustom(),
    );
  }
}
