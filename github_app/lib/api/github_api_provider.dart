import 'dart:convert';

import 'package:github_app/model/github_model.dart';
import 'package:http/http.dart' as maker;

class GitCall{


  Future<List<Item>> fetchUser()async{
    String url = 'https://api.github.com/search/repositories?q=flutter';
    final req = await maker.get(url);
    if(req.statusCode == 200){
      final stuff = jsonDecode(req.body);
      final Iterable json = stuff["items"];
      json.map((user) => Item.fromJson(user)).toList();
    }
     return null;
  }
}