import 'dart:math';

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

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  //CREATE & UPDATE
  void put(User user) {
    if (user == '') {
      return;
    }

    if (user.id != '' &&
        user.id.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(
        user.id,
        (_) => User(
          id: user.id,
          name: user.name,
          email: user.email,
          avatarUrl: user.avatarUrl,
        ),
      );
    } else {
      //CREATE
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => User(
          id: id,
          name: user.name,
          email: user.email,
          avatarUrl: user.avatarUrl,
        ),
      );
    }

    //teste para depois
    // if (user.id != '' &&
    //     user.id.trim().isNotEmpty &&
    //     _items.containsKey(user.id)) {
    //   _items.update(
    //       user.id,
    //       (_) => user);
    // }

    notifyListeners();
  }

  void remove(User user) {
    if (user != '' && user.id != '') {
      _items.remove(user.id);
      notifyListeners();
    }
  }
}
