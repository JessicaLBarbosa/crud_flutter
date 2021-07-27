import 'package:crud_app/provider/users_provider.dart';
import 'package:crud_app/views/user_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => UsersProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'CRUD',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: UserList(),
      ),
    );
  }
}
