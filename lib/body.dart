import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_teste_mobx/controller.dart';
import 'package:get_it/get_it.dart';


class BodyWidget extends StatelessWidget {
  _textField({String label, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label,
        errorText: errorText == null ? null : errorText(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final controller = GetIt.I<Controller>();

    return Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Observer(
                builder: (_) {
                  return _textField(
                      label: "Nome",
                      onChanged: controller.client.mudarnome,
                      errorText: controller.validarnome);
                },
              ),
              SizedBox(height: 20),
              Observer(
                builder: (_) {
                  return _textField(
                      label: "E-mail",
                      onChanged: controller.client.mudarEmail,
                      errorText: controller.validaremail);
                },
              ),
              SizedBox(height: 20),
              Observer(
                builder: (_) {
                  return _textField(
                      label: "CPF",
                      onChanged: controller.client.mudarCPF,
                      errorText: controller.validarcpf);
                },
              ),
              SizedBox(height: 50),
              Observer(
                builder: (_) {
                  return RaisedButton(
                    onPressed: controller.isValid ? () {} : null,
                    child: Text("Salvar"),
                  );
                },
              )
            ],
          ),
        ));
  }
}
