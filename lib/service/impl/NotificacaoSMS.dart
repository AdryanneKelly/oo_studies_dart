import 'package:oo_studies_dart/classes/Pessoa.dart';
import 'package:oo_studies_dart/service/NotificacaoInterface.dart';

class NotificacaoSMS implements NotificacaoInterface{
  @override
  void enviarNotificacao(Pessoa pessoa){
    print("Enviando SMS para ${pessoa.getNome()}");
  }
}