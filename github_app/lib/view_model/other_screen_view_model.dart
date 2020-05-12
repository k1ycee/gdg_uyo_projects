import 'package:flutter/material.dart';
import 'package:github_app/api/github_api_provider.dart';
import 'package:github_app/model/github_user_model.dart';

class GetDUser extends ChangeNotifier{
  List<OtherViewModel> uzi = List<OtherViewModel>();

  Future<void> bringUser()async{
    final gettings = await GitCall().fetchperson();
    this.uzi = gettings.map((reaks) => OtherViewModel(users: reaks))?.toList() ?? [];
    notifyListeners();
  }
}



class OtherViewModel{
  final Users users;
  OtherViewModel({this.users});

  String get login{
    return users.login;
  }
  int get id{
    return users.id;
  }
  String get nodeId{
    return users.nodeId;
  }
  String get avatarUrl{
    return users.avatarUrl;
  }
  String get gravatarId{
    return users.gravatarId;
  }
  String get url{
    return users.url;
  }
  String get htmlUrl{
    return users.htmlUrl;
  }
  String get followersUrl{
    return users.followersUrl;
  }
  String get followingUrl{
    return users.followingUrl;
  }
  String get gistsUrl{
    return users.gistsUrl;
  }
  String get starredUrl{
    return users.starredUrl;
  }
  String get subscriptionsUrl{
    return users.subscriptionsUrl;
  }
  String get organizationsUrl{
    return users.organizationsUrl;
  }
  String get reposUrl{
    return users.reposUrl;
  }
  String get eventsUrl{
    return users.eventsUrl;
  }
  String get receivedEventsUrl{
    return users.receivedEventsUrl;
  }
  Type get type{
    return users.type;
  }
  bool get siteAdmin{
    return users.siteAdmin;
  }
}