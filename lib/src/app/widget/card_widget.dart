import 'package:flutter/material.dart';

import 'cardValores_widget.dart';

class Cardwidget extends StatelessWidget {
  const Cardwidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CardValoreswidget((Tranferencia(100.00, 1000))),
        CardValoreswidget((Tranferencia(200.00, 2000))),
        CardValoreswidget((Tranferencia(300.00, 3000))),
      ],
    );
  }
}

class Tranferencia {
  final double valor;
  final int numeroConta;
  Tranferencia(this.valor, this.numeroConta);
}
