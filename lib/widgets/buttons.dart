import 'package:antd_icons/antd_icons.dart';
import 'package:antd_icons/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/widgets/boxShadow.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';

class OutlineActionButton extends StatelessWidget {
  final String text;
  final SvgGenImage icon;
  final void Function() callbackFunction;
  const OutlineActionButton({super.key, required this.text, required this.icon, required this.callbackFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338,
      height: 65,
      decoration: BoxDecoration(
          boxShadow: [CustomShadow.primaryShadow],
          border: Border.all(color: Colors.black, width: 1),
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [secondary.shade500, primary.shade500])),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shadowColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: callbackFunction,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              icon.svg(height: 24, color: Colors.white),
              const SizedBox(width: 5),
              Text(text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.white)),
            ],
          )),
    );
  }
}

class ActionButton extends StatelessWidget {
  final String text;
  final SvgGenImage icon;
  final void Function() callbackFunction;
  const ActionButton({super.key, required this.text, required this.icon, required this.callbackFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 338,
      height: 65,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        boxShadow: [CustomShadow.primaryShadow],
        borderRadius: BorderRadius.circular(15),
      ),
      child: ElevatedButton(
          style: ButtonStyle(
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0))),
              backgroundColor: MaterialStateProperty.all(Colors.white),
              shadowColor: MaterialStateProperty.all(Colors.transparent),
              foregroundColor: MaterialStateProperty.all(Colors.black38)),
          onPressed: callbackFunction,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              icon.svg(height: 24),
              const SizedBox(width: 5),
              Text(text, style: Theme.of(context).textTheme.bodyLarge),
            ],
          )),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final void Function() callbackFunction;
  const Button({super.key, required this.text, required this.callbackFunction});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 256,
      height: 44,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [secondary.shade500, primary.shade500])),
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.transparent),
              shadowColor: MaterialStateProperty.all(Colors.transparent)),
          onPressed: callbackFunction,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(text,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: Colors.white)),
            ],
          )),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  final String text;
  final void Function() callbackFunction;
  const CustomTextButton({super.key, required this.text, required this.callbackFunction});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: callbackFunction,
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            AntdIcons.outlined.left.svg(height: 14),
            const SizedBox(width: 5),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ));
  }
}
