import 'package:oo_studies_dart/enum/tipo_notificacao.dart';

abstract class Pessoa {
  //variaveis private tem underline no inicio
  String _nome = "";
  String _endereco = "";
  String _celular = "";
  String _email = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular() {
    return _celular;
  }

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

  void setToken(String token) {
    _token = token;
  }

  String getToken() {
    return _token;
  }

  //construtor
  Pessoa(String nome, String endereco,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  @override
  String toString() {
    // TODO: implement toString
    return {
      "Nome": _nome,
      "Endereco": _endereco,
      "tipoNotificacao": _tipoNotificacao
    }.toString();
  }
}
