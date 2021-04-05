import 'package:bytbank/src/app/widget/card_widget.dart';
import 'package:bytbank/src/app/widget/formModelo.dart';
import 'package:flutter/material.dart';

class Transferir extends StatefulWidget {
  Transferir({Key key}) : super(key: key);

  @override
  _TransferirState createState() => _TransferirState();
}

class _TransferirState extends State<Transferir> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _numeroContaController = TextEditingController();
  final TextEditingController _valorController = TextEditingController();

  _submit(numeroConta, valor) {
    if (_formKey.currentState.validate()) {
      print('${numeroConta}');
      print('${valor}');
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Theme.of(context).primaryColor,
                padding: EdgeInsets.all(8),
                child: Center(
                    child: Text(
                  "Formulario de tranferências",
                  style: TextStyle(
                      color: Theme.of(context).secondaryHeaderColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
              ),
              FormModelo(
                _numeroContaController,
                'Número da Conta',
                dica: '0000',
                textInputType: TextInputType.number,
              ),
              FormModelo(
                _valorController,
                'Valor',
                dica: '0000',
                icons: Icon(Icons.contacts),
                textInputType: TextInputType.number,
              ),
              Container(
                margin: EdgeInsets.only(top: 1),
                padding: EdgeInsets.only(top: 15, bottom: 1),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                    onPressed: () {
                      _submit(
                          _valorController.text, _numeroContaController.text);
                    },
                    icon: Icon(Icons.save),
                    label: Text('Salvar')),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amber[700]),
                  ),
                  child: const Text('Cancelar'),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
