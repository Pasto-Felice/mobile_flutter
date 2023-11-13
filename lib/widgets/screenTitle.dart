import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';

class ScreenTitle extends StatelessWidget {
  final drawerKey;
  final title;
  const ScreenTitle({super.key, required this.drawerKey, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Container(
          width: 30,
            height: 30,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: whites.shade300,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 5,
                    blurRadius: 30,
                    offset: const Offset(0, 4),
                  )
                ],
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      secondary.shade500,
                      primary.shade500
                    ])),
            child: IconButton(
              padding: EdgeInsets.zero,
                icon: AntdIcons.outlined.user
                    .svg(height: 24, color: whites.shade300),
                onPressed: () {
                  drawerKey.currentState!.openEndDrawer();
                },
              )
            )
      ],
    );
  }
}

