import 'package:crud_app/data/dummy_users.dart';
import 'package:crud_app/models/user.dart';
import 'package:flutter/material.dart';

class UsersProvider with ChangeNotifier {
  Map<String, User> _items = {...DUMMY_USERS};

  //READ
  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}
