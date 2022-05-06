import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';

class AppData with ChangeNotifier {
  var data = [];

  void setData(newData) {
    data = newData;
    notifyListeners();
  }

  Future<bool> requestData() async {
    final res =
        await http.get(Uri.parse('https://api.b7web.com.br/flutter1wb/'));

    if (res.statusCode == 200) {
      //insert data
      setData(jsonDecode(res.body));
      return true;
    } else {
      return false;
    }
  }
}
