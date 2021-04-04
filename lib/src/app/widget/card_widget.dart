import 'package:flutter/material.dart';

import 'cardValores_widget.dart';

class Cardwidget extends StatelessWidget {
  const Cardwidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CardValoreswidget((Tranferencia(100.00, 1000)));

  }
}

class Tranferencia {
  final double valor;
  final int numeroConta;
  Tranferencia(this.valor, this.numeroConta);
}
