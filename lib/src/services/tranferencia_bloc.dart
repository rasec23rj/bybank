import 'dart:async';
import 'package:bytbank/src/model/tranfereincia.dart';

class TranfereincaBloc {
  List<TranferenciasModel> tranferencas = List();
  List items = [];

  final StreamController _streamController = StreamController();
  Sink get input => _streamController.sink;
  Stream get ouput => _streamController.stream.asyncMap((event) => list());

  save(numeroConta, valor) async {
    tranferencas.add(
        TranferenciasModel(int.tryParse(numeroConta), double.tryParse(valor)));
    input.add(tranferencas);
    list();
  }

  Future<TranferenciasModel> list() async {
    print(tranferencas.length);
    return TranferenciasModel.fromMap();
  }
}
