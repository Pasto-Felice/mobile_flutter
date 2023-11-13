import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:antd_icons/antd_icons.dart';
class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.60,
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 40),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              border: Border(
                bottom: Divider.createBorderSide(context,
                    color: whites.shade500, width: 1.0),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/logo_icon.png"),
                  height: 75,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: AntdIcons.outlined.user.svg(height: 24)),
                    Text("Ciao Luigi",
                        style: Theme.of(context).textTheme.bodyMedium)
                  ],
                )
              ],
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 25),
            leading: const Icon(Icons.logout),
            title:
            Text("Logout", style: Theme.of(context).textTheme.bodyMedium),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
