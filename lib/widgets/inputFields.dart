import 'package:flutter/material.dart';
import 'package:pasto_felice_mobile/widgets/colors.dart';

class TextInputField extends StatelessWidget {
  final String label;
  final bool password;
  final double width, height;

  const TextInputField(
      {super.key,
      required this.label,
      required this.password,
      this.width = 256,
      this.height = 40});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
        child: TextFormField(
          obscureText: password,
          autocorrect: !password,
          enableSuggestions: !password,
          style: Theme.of(context).textTheme.bodyMedium,
          textAlignVertical: TextAlignVertical.center,
          decoration: InputDecoration(
              labelStyle: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: whites.shade500),
              label: Text(label),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primary.shade400)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: whites.shade400))),
        ),
      ),
    );
  }
}

class DateInputField extends StatelessWidget {
  final double width, height;

  const DateInputField({super.key, this.width = 256, this.height = 40});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
          child: TextButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                alignment: AlignmentDirectional.centerStart,
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: whites.shade400, width: 1)))),
            onPressed: () {
              showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1921),
                  lastDate: DateTime.now());
            },
            child: const Text("dd/mm/yyyy"),
          )),
    );
  }
}

class SelectInputField extends StatelessWidget {
  final double width, height;
  final List<String> items;

  const SelectInputField(
      {super.key, this.width = 256, this.height = 40, required this.items});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
        child: DropdownButtonHideUnderline(
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: whites.shade400)),
            child: DropdownButton<String>(
              borderRadius: BorderRadius.circular(5),
              dropdownColor: Colors.white,
              style: Theme.of(context).textTheme.labelMedium,
              icon: const Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black38,
              ),
              value: items.first,
              onChanged: (value) {},
              items: items.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}

class CheckBoxInputField extends StatefulWidget {
  final double width, height;
  final String label;

  const CheckBoxInputField(
      {super.key, this.width = 256, this.height = 40, required this.label});

  @override
  State<CheckBoxInputField> createState() => _CheckBoxInputFieldState();
}

class _CheckBoxInputFieldState extends State<CheckBoxInputField> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 18,
                height: 18,
                child: Checkbox(
                    value: isChecked,
                    side: BorderSide(color: whites.shade400, width: 2),
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    }),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                super.widget.label,
                style: Theme.of(context).textTheme.bodySmall,
              )
            ],
          )),
    );
  }
}
