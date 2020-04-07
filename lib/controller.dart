import 'package:mobx/mobx.dart';

import 'models/clients.dart';
part 'controller.g.dart';

class Controller = ControllerBase with _$Controller;

abstract class ControllerBase with Store {
  var client = Client();
  @computed
  bool get isValid {
    return validarnome() == null ||
        validaremail() == null ||
        validarcpf() == null;
  }

  String validarnome() {
    if (client.nome == null || client.nome.isEmpty) {
      return "Este campo é obrigatório";
    } else if (client.nome.length < 3) {
      return "Seu campo precisa ser maior que 3 caracteres.";
    }
    return null;
  }

  String validaremail() {
    if (client.email == null || client.email.isEmpty) {
      return "Este campo é obrigatório";
    } else if (client.email.length < 3) {
      return "Seu campo precisa ser maior que 3 caracteres.";
    }
    return null;
  }

  String validarcpf() {
    if (client.cpf == null || client.cpf.isEmpty) {
      return "Este campo é obrigatório";
    } else if (client.cpf.length < 3) {
      return "Seu campo precisa ser maior que 3 caracteres.";
    }
    return null;
  }
}
