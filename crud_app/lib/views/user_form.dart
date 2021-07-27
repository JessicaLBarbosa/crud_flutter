import 'package:crud_app/routes/app_routes.dart';
import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  // const UserForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Usuário'),
        actions: [
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'E-mail'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'URL do Avatar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
