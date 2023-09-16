import 'package:oo_studies_dart/classes/Pessoa.dart';
import 'package:oo_studies_dart/service/NotificacaoInterface.dart';

class NotificacaoEmail implements NotificacaoInterface{
  @override
  void enviarNotificacao(Pessoa pessoa){
    print("Enviando Email para ${pessoa.getNome()}");
  }
}