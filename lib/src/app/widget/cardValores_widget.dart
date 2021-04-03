import 'package:flutter/material.dart';

import 'card_widget.dart';

class CardValoreswidget extends StatelessWidget {
  final Tranferencia _tranferencia;

  CardValoreswidget(
    this._tranferencia,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.5,
      shadowColor: Colors.tealAccent[700],
      borderOnForeground: true,
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(
          '${_tranferencia.numeroConta}',
          style: TextStyle(color: Color(0xFF088F35)),
        ),
        subtitle: Text('${_tranferencia.valor}'),
        trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
