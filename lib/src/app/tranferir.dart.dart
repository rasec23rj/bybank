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
      debugPrint('${numeroConta}');
      debugPrint('${valor}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Tranferir '),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FormModelo(
                _numeroContaController,
                'Número da Conta',
                dica: '0000',
              ),
              FormModelo(
                _valorController,
                'Valor',
                dica: '0000',
                icons: Icon(Icons.contacts),
                textInputType: TextInputType.number,
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                    onPressed: () {
                      _submit(
                          _valorController.text, _numeroContaController.text);
                    },
                    icon: Icon(Icons.save),
                    label: Text('Salvar')),
              )
            ],
          ),
        ),
      ),
    );
  }
}
