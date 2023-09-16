import 'package:oo_studies_dart/classes/Pessoa.dart';
import 'package:oo_studies_dart/enum/tipo_notificacao.dart';
import 'package:oo_studies_dart/service/NotificacaoInterface.dart';
import 'package:oo_studies_dart/service/impl/NotificacaoEmail.dart';
import 'package:oo_studies_dart/service/impl/NotificacaoPushNotification.dart';
import 'package:oo_studies_dart/service/impl/NotificacaoSMS.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacao = NotificacaoPushNotification();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSMS();
        break;
      default:
        break;
    }

    if (notificacao != null) {
      //exclamação serve para dizer quando se tem certeza que se tem um valor
      notificacao!.enviarNotificacao(pessoa);
    }else{
      print("Pessoa sem tipo de notificacao");
    }
  }
}
