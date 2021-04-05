import 'package:bytbank/src/services/tranferencia_bloc.dart';
import 'package:flutter/material.dart';

import 'cardValores_widget.dart';

class Cardwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CardValoreswidget();
  }
}

class Tranferencia {
  final double valor;
  final int numeroConta;
  Tranferencia(this.valor, this.numeroConta);
}
