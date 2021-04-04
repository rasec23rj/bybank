import 'package:flutter/material.dart';

import 'card_widget.dart';

class CardValoreswidget extends StatelessWidget {
  final Tranferencia _tranferencia;

  CardValoreswidget(
    this._tranferencia,
  );

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 23,
      itemBuilder: (BuildContext context, int index) {
         return Column(
            children: [
              ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text(
                  '${_tranferencia.numeroConta}',
                  style: TextStyle(color: Color(0xFF088F35)),
                ),
                subtitle: Text('${_tranferencia.valor}'),
                trailing: Icon(Icons.more_vert),
              ),

            ],
          );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),


    );
  }
}
