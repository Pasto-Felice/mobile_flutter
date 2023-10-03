import 'package:flutter/material.dart';
import 'package:antd_icons/antd_icons.dart';
import 'package:pasto_felice_mobile/screens/loginPage.dart';
import 'package:pasto_felice_mobile/screens/registerPage.dart';
import 'package:pasto_felice_mobile/widgets/buttons.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: SizedBox(
                  width: 250,
                  child: Hero(
                    tag: "logo",
                    child: Image(
                      image: AssetImage("assets/logo_scritta.png"),
                      fit: BoxFit.fitWidth,
                    ),
                  )),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              height: 350,
              padding: const EdgeInsets.symmetric(vertical: 40),
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        secondary.shade500,
                        primary.shade500
                      ])),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ActionButton(text: "Continua con Google", icon: AntdIcons.outlined.google, callbackFunction: (){},),
                  OutlineActionButton(text: "Continua con Facebook", icon: AntdIcons.filled.facebook, callbackFunction: (){}),
                  OutlineActionButton(text: "Continua con la tua mail", icon: AntdIcons.filled.mail, callbackFunction: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
                  }),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RegisterPage()));
                  }, child: Text("Registrati", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
