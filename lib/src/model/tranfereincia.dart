class TranferenciasModel {
  int numeroConta;
  double valor;

  TranferenciasModel(this.numeroConta, this.valor);

  Map<String, dynamic> toVacinas() {
    return {
      'numeroConta': this.numeroConta,
      'valor': this.valor,
    };
  }

  fromMap(Map map) {
    numeroConta = int.tryParse(map['numeroConta']);
    valor = map['valor'];
  }
}
