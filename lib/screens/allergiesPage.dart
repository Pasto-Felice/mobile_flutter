import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/api/loginRequestes.dart';
import 'package:pasto_felice_mobile/parsing/allergens.dart';
import 'package:pasto_felice_mobile/screens/menuLifespawnPage.dart';
import 'package:pasto_felice_mobile/widgets/buttons.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';
import 'package:pasto_felice_mobile/widgets/inputFields.dart';

class AllergiesPage extends StatefulWidget {
  const AllergiesPage({super.key});

  @override
  State<AllergiesPage> createState() => _AllergiesPageState();
}

class _AllergiesPageState extends State<AllergiesPage> {
  String name = '';
  int height = 0;
  String sex = '';
  String preferredSex = '';
  DateTime birthDate = DateTime(2023);
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
                          "Dicci le tue allergie",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                        const SizedBox(height: 15),
                        Text(
                          "Seleziona le allergie a cui sei soggetto",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 15),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                          height: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border:
                                  Border.all(style: BorderStyle.solid, color: whites.shade400)),
                          child: FutureBuilder<List<Allergens>>(
                            future: fetchAllergens(),
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                return AllergensList(allergens: snapshot.data!);
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              }
                              // By default, show a loading spinner.
                              return const CircularProgressIndicator();
                            },
                          ),
                        ),
                        const SizedBox(height: 30),
                        Button(text: "Salva", callbackFunction: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const MenuLifespawnPage()));
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

class AllergensList extends StatelessWidget {
  const AllergensList({super.key, required this.allergens});

  final List<Allergens> allergens;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        mainAxisExtent: 30
      ),
      itemCount: allergens.length,
      itemBuilder: (context, index) {
        return CheckBoxInputField(label: allergens[index].name);
      },
    );
  }
}
