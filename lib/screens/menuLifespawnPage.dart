import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/screens/menuScreen.dart';
import 'package:pasto_felice_mobile/widgets/buttons.dart';
import 'package:pasto_felice_mobile/widgets/inputFields.dart';

class MenuLifespawnPage extends StatefulWidget {
  const MenuLifespawnPage({super.key});

  @override
  State<MenuLifespawnPage> createState() => _MenuLifespawnPageState();
}

class _MenuLifespawnPageState extends State<MenuLifespawnPage> {
  String name = '';
  int height = 0;
  String sex = '';
  String preferredSex = '';
  DateTime birthDate = DateTime(2023);
  List<int> allergens = [];
  Map data = {
    "email": "",
    "password": "",
    "height": 0,
    "sex": "",
    "preferredSex": "",
    "birthDate": DateTime(2023),
    "allergens": [],
    "menuLifetime": 0
  };

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
                width: 250,
                height: 250,
                child: Hero(
                  tag: "logo",
                  child: Image(
                    image: AssetImage("assets/logo_scritta.png"),
                    fit: BoxFit.fitWidth,
                  ),
                )),
            Expanded(
              child: SizedBox(
                  width: 290,
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Ogni quante settimane vuoi cambiare il menu?",
                          style: Theme.of(context).textTheme.displayMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        const TextInputField(label: "Eg. 2", password: false),
                        const SizedBox(height: 30),
                        Button(text: "Salva", callbackFunction: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuScreen()));
                        })
                      ],
                    ),
                  )),
            ),
            CustomTextButton(
                text: "Torna indietro",
                callbackFunction: () {
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
