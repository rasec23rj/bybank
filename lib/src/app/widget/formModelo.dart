import 'package:bytbank/src/utils/regex.dart';
import 'package:flutter/material.dart';

class FormModelo extends StatelessWidget {
  Regex regex;
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
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: (value) {},
        onSaved: (String value) {},
        validator: (value) => value.isEmpty
            ? '$rotulo é obrigátorio'
            : (numberRegExp.hasMatch(value) ? null : 'Somente números'));
  }
}

RegExp numberRegExp = RegExp(r'\d');
