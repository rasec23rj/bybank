import 'package:bytbank/src/services/tranferencia_bloc.dart';
import 'package:flutter/material.dart';

class CardValoreswidget extends StatelessWidget {
  TranfereincaBloc tranfereincaBloc = TranfereincaBloc();

  @override
  Widget build(BuildContext context) {
    tranfereincaBloc.list();
    return StreamBuilder(
        stream: tranfereincaBloc.ouput,
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: tranfereincaBloc.tranferencas.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.monetization_on),
                    title: Text(
                      '${tranfereincaBloc.tranferencas[index].numeroConta}',
                      style: TextStyle(color: Color(0xFF088F35)),
                    ),
                    subtitle:
                        Text('${tranfereincaBloc.tranferencas[index].valor}'),
                    trailing: Icon(Icons.more_vert),
                  ),
                ],
              );
            },
            // separatorBuilder: (BuildContext context, int index) => const Divider(),
          );
        });
  }
}
