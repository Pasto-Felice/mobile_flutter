import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:pasto_felice_mobile/screens/listScreen.dart';
import 'package:pasto_felice_mobile/screens/menuScreen.dart';
import 'package:pasto_felice_mobile/widgets/boxShadow.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 58,
      decoration: BoxDecoration(
          color: whites.shade300,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(5)),
          boxShadow: [CustomShadow.primaryShadow]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 25,
                width: 25,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.center,
                  iconSize: 25,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuScreen()));
                  },
                  icon: Icon(
                    Ionicons.reader_sharp,
                    color: primary.shade500,
                  ),
                ),
              ),
              Text(
                "Menù",
                style: Theme.of(context).textTheme.labelSmall,
              )
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 25,
                width: 25,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.center,
                  iconSize: 25,
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.calendar_clear_sharp,
                    color: primary.shade500,
                  ),
                ),
              ),
              Text(
                "Calendario",
                style: Theme.of(context).textTheme.labelSmall,
              )
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 25,
                width: 25,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.center,
                  iconSize: 25,
                  onPressed: () {},
                  icon: Icon(
                    Ionicons.stats_chart_sharp,
                    color: primary.shade500,
                  ),
                ),
              ),
              Text(
                "Statistiche",
                style: Theme.of(context).textTheme.labelSmall,
              )
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(
                height: 25,
                width: 25,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.center,
                  iconSize: 25,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ListScreen()));
                  },
                  icon: Icon(
                    Ionicons.list_sharp,
                    color: primary.shade500,
                  ),
                ),
              ),
              Text(
                "Lista",
                style: Theme.of(context).textTheme.labelSmall,
              )
            ]),
          ],
        ),
      ),
    );
  }
}
