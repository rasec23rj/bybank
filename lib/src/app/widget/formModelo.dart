import 'package:flutter/material.dart';

class FormModelo extends StatelessWidget {
  TextEditingController controller;
  String rotulo;
  String dica;
  Icon icons;
  TextInputType textInputType;

  FormModelo(
    this.controller,
    this.rotulo, {
    this.dica,
    this.icons,
    this.textInputType,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: dica,
        labelText: rotulo,
        enabled: true,
        prefixIcon: icons != null ? icons : null,
      ),
      keyboardType: textInputType,
      autovalidateMode: AutovalidateMode.always,
      onChanged: (value) {},
      onSaved: (String value) {},
      validator: (String value) {
        if (value == null || value.isEmpty) {
          return '$rotulo é obrigátorio';
        }
        return null;
      },
    );
  }
}
