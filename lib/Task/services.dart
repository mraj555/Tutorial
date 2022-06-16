import 'package:http/http.dart';

import 'model.dart';

class HttpServices {

  Future<Model> getData() async {

    var res = await get(Uri.parse('https://reqres.in/api/users?page=2'));

    if(res.statusCode == 200) {
      return modelFromJson(res.body);
    }
    throw 'Can\'t get Data...';
  }
}