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
    debugPrint('${numeroConta}');
    debugPrint('${valor}');
    if (_formKey.currentState.validate()) {
      // Process data.
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
              TextFormField(
                controller: _numeroContaController,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.contacts,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintText: '0000',
                  labelText: 'Número da conta *',
                ),
                keyboardType: TextInputType.number,
                onSaved: (String value) {},
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'O Número da conta  é obrigátorio';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _valorController,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.monetization_on_outlined,
                    color: Theme.of(context).primaryColor,
                  ),
                  hintText: '00.00',
                  labelText: 'Valor a tranferir *',
                ),
                keyboardType: TextInputType.number,
                onSaved: (String value) {},
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Valor a tranferir e obrigátorio';
                  }
                  return null;
                },
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
