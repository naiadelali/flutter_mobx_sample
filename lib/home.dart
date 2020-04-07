import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_teste_mobx/body.dart';
import 'package:flutter_teste_mobx/controller.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<Controller>(context);

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(title: Observer(builder: (_) {
        return Text(controller.isValid
            ? "Fomulário validado"
            : "Fomulário não validado");
      })),
      body: BodyWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
