

import 'package:flutter/material.dart';
import 'package:github_app/api/github_api_provider.dart';
import 'package:github_app/model/github_model.dart';

class GetUser extends ChangeNotifier{
  List<HomeScreenViewModel> uzi = List<HomeScreenViewModel>();
  Future<void> bringUser(String quest)async{
    final gettings = await GitCall().fetchUser(quest);
    this.uzi = gettings.map((reaks) => HomeScreenViewModel(item: reaks)).toList();
  }
}


class HomeScreenViewModel{
  final Item item;
  HomeScreenViewModel({this.item});

  int get id{
    return item.id;
  }

  String get nodeId{
    return item.nodeId;
  }

  String get name{
    return item.name;
  }

  String get fullname{
    return item.fullName;
  }
  
  bool get private{
    return item.private;
  }

  Owner get owner{
    return item.owner;
  }


}
