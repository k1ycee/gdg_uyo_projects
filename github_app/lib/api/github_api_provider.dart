import 'dart:convert';

import 'package:github_app/model/github_model.dart';
import 'package:github_app/model/github_user_model.dart';
import 'package:github_app/model/user_location.dart';
import 'package:http/http.dart' as maker;

class GitCall{


  Future<List<Item>> fetchUser()async{
    String url = 'https://api.github.com/search/repositories?q=flutter';
    final req = await maker.get(url);
    if(req.statusCode == 200){
      final stuff = jsonDecode(req.body);
      final Iterable json = stuff["items"];
      return json.map((user) => Item.fromJson(user)).toList();
    }
     return null;
  }
  Future<List<Users>> fetchperson()async{
    String url = 'https://api.github.com/users?language=flutter';
    final per = await maker.get(url);
    if(per.statusCode == 200){
      final Iterable json = jsonDecode(per.body);
      return json.map((person) => Users.fromJson(person)).toList();
    }   
    return null;
  }

  Future<Location> fetchLocation(String user)async{
    String url = 'https://api.github.com/users/$user';
    final locat = await maker.get(url);
    if(locat.statusCode == 200){
      return Location.fromJson(jsonDecode(locat.body));
    }
    return null;
  }
}