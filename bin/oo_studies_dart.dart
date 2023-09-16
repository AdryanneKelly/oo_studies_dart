import 'package:oo_studies_dart/classes/PessoaFisica.dart';
import 'package:oo_studies_dart/classes/PessoaJuridica.dart';
import 'package:oo_studies_dart/enum/tipo_notificacao.dart';
import 'package:oo_studies_dart/service/EnviarNotificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica = PessoaFisica(
      "Adryanne", "Um canto ai", "40028922", tipoNotificacao: TipoNotificacao.EMAIL);
  print(pessoaFisica);

  var pessoaJuridica = PessoaJuridica(
      "Cabaré da Neide", "Bem ali", "465676787", tipoNotificacao: TipoNotificacao.SMS);
  print(pessoaJuridica);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaJuridica);
  enviarNotificacao.notificar(pessoaFisica);
}
