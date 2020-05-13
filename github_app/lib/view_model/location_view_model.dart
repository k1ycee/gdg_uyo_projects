import 'package:github_app/model/user_location.dart';


class LocationViewModel{
    final Location locate;
    LocationViewModel({this.locate});

    String get login{
      return locate.login;
    }
    int get id{
      return locate.id;
    }
    String get nodeId{
      return locate.nodeId;
    }
    String get avatarUrl{
      return locate.avatarUrl;
    }
    String get gravatarId{
      return locate.gravatarId;
    }
    String get url{
      return locate.url;
    }
    String get htmlUrl{
      return locate.htmlUrl;
    }
    String get followersUrl{
      return locate.followersUrl;
    }
    String get followingUrl{
      return locate.followingUrl;
    }
    String get gistsUrl{
      return locate.gistsUrl;
    }
    String get starredUrl{
      return locate.starredUrl;
    }
    String get subscriptionsUrl{
      return locate.subscriptionsUrl;
    }
    String get organizationsUrl{
      return locate.organizationsUrl;
    }
    String get reposUrl{
      return locate.reposUrl;
    }
    String get eventsUrl{
      return locate.eventsUrl;
    }
    String get receivedEventsUrl{
      return locate.receivedEventsUrl;
    }
    String get type{
      return locate.type;
    }
    bool get siteAdmin{
      return locate.siteAdmin;
    }
    String get name{
      return locate.name;
    }
    dynamic get company{
      return locate.company;
    }
    String get blog{
      return locate.blog;
    }
    String get location{
      return locate.location;
    }
    dynamic get email{
      return locate.email;
    }
    dynamic get hireable{
      return locate.hireable;
    }
    dynamic get bio{
      return locate.bio;
    }
    int get publicRepos{
      return locate.publicRepos;
    }
    int get publicGists{
      return locate.publicGists;
    }
    int get followers{
      return locate.followers;
    }
    int get following{
      return locate.following;
    }
    DateTime get createdAt{
      return locate.createdAt;
    }
    DateTime get updatedAt{
      return locate.updatedAt;
    }
}