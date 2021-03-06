import 'package:bytbank/src/utils/regex.dart';
import 'package:flutter/material.dart';

class FormModelo extends StatelessWidget {
  Regex regex = Regex();
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
    return Container(
      padding: EdgeInsets.only(top: 10),
      child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: dica,
            labelText: rotulo,
            enabled: true,
            contentPadding: EdgeInsets.all(10),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            prefixIcon: icons != null ? icons : null,
          ),
          keyboardType: textInputType,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onChanged: (value) {},
          onSaved: (String value) {},
          validator: (value) => value.isEmpty
              ? '$rotulo é obrigátorio'
              : (regex.numberRegExp.hasMatch(value)
                  ? null
                  : 'Somente números')),
    );
  }
}
