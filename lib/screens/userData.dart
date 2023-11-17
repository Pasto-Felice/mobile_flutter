import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/screens/allergiesPage.dart';
import 'package:pasto_felice_mobile/widgets/buttons.dart';
import 'package:pasto_felice_mobile/widgets/inputFields.dart';

class UserDataPage extends StatefulWidget {
  const UserDataPage({super.key});

  @override
  State<UserDataPage> createState() => _UserDataPageState();
}

class _UserDataPageState extends State<UserDataPage> {
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
                  width: 290,
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          "Inserisci i tuoi dati",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nome",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                const SizedBox(height: 10),
                                const TextInputField(
                                  label: "Eg. Luigi",
                                  password: false,
                                  width: 188,
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Altezza (cm)",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                const SizedBox(height: 10),
                                const TextInputField(
                                  label: "160",
                                  password: false,
                                  width: 102,
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sesso",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                const SizedBox(height: 10),
                                const SelectInputField(
                                  width: 128,
                                  items: ["M", "F"],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Genere",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                const SizedBox(height: 10),
                                const SelectInputField(
                                    width: 128,
                                    items: ["Uomo", "Donna", "Altro"]),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Data di nascita",
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                                const SizedBox(height: 10),
                                const DateInputField(
                                  width: 290,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CheckBoxInputField(label: "Non ho allergie"),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Button(
                            text: "Avanti",
                            callbackFunction: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const AllergiesPage()));
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
