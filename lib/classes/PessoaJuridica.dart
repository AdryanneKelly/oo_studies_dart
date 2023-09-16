import 'package:oo_studies_dart/classes/Pessoa.dart';
import 'package:oo_studies_dart/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  //variaveis private tem underline no inicio
  String _cnpj = "";

  void setCnpj(String cnpj) {
    _cnpj = cnpj;
  }

  String getCnpj() {
    return _cnpj;
  }

  //construtor
  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    // TODO: implement toString
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "tipoNotificacao": getTipoNotificacao(),
      "CNPJ": _cnpj
    }.toString();
  }
}
