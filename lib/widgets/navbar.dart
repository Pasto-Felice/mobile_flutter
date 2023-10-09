import 'package:antd_icons/antd_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:ionicons/ionicons.dart';
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
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 30,
              offset: const Offset(0, 4),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Boxicons.bx_food_menu,
                color: primary.shade500,
                size: 25,
              ),
              Text(
                "Menù",
                style: Theme.of(context).textTheme.labelSmall,
              )
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                AntdIcons.outlined.calendar.svg(
                    color: primary.shade500,
                    height: 25
                ),
              Text(
                "Calendario",
                style: Theme.of(context).textTheme.labelSmall,
              )
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                FeatherIcons.settings,
                color: primary.shade500,
                size: 25,
              ),
              Text(
                "Opzioni",
                style: Theme.of(context).textTheme.labelSmall,
              )
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Ionicons.list_sharp,
                color: primary.shade500,
                size: 25,
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
