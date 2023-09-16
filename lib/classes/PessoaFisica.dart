import 'package:oo_studies_dart/classes/Pessoa.dart';
import 'package:oo_studies_dart/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  //variaveis private tem underline no inicio
  String _cpf = "";

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  //construtor
  PessoaFisica(String nome, String endereco, String cpf, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  @override
  String toString() {
    // TODO: implement toString
    return {
      "Nome": getNome(),
      "Endereco": getEndereco(),
      "tipoNotificacao": getTipoNotificacao(),
      "CPF": _cpf
    }.toString();
  }
}
