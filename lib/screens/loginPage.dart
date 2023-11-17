import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/screens/menuScreen.dart';
import 'package:pasto_felice_mobile/widgets/buttons.dart';
import 'package:pasto_felice_mobile/widgets/inputFields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  Map data = {"email": "", "password": ""};
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: double.infinity,
        child: Column(
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
                  width: 250,
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Inserisci le credenziali",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: 30),
                        const TextInputField(
                          label: "E-mail",
                          password: false,
                        ),
                        const SizedBox(height: 15),
                        const TextInputField(
                          label: "Password",
                          password: true,
                        ),
                        const SizedBox(height: 5),
                        const CheckBoxInputField(label: "Ricordami"),
                        const SizedBox(height: 30),
                        Button(
                            text: "Invia",
                            callbackFunction: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const MenuScreen()));
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
