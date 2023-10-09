import 'package:antd_icons/antd_icons.dart';
import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "MENU",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Container(
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
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: AntdIcons.outlined.user
                  .svg(height: 24, color: whites.shade300),
            ))
      ],
    );
  }
}

