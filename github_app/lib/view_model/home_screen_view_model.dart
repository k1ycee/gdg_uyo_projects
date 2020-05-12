

import 'package:flutter/material.dart';
import 'package:github_app/api/github_api_provider.dart';
import 'package:github_app/model/github_model.dart';
import 'package:github_app/view_model/location_view_model.dart';

class GetUser extends ChangeNotifier{
  List<HomeScreenViewModel> uzi = List<HomeScreenViewModel>();
  LocationViewModel loc = LocationViewModel();

  Future<void> bringUser()async{
    final gettings = await GitCall().fetchUser();
    this.uzi = gettings.map((reaks) => HomeScreenViewModel(item: reaks))?.toList() ?? [];
    print(this.uzi);
    notifyListeners();
  }

  Future<void> fetchLocat(String user)async{
    final loc = await GitCall().fetchLocation(user);
    LocationViewModel(locate: loc);
    notifyListeners();
  }
}


class HomeScreenViewModel{
  final Item item;
  HomeScreenViewModel({this.item});

  int get id{
    return this.item.id;
  }

  String get nodeId{
    return this.item.nodeId;
  }

  String get name{
    return this.item.name;
  }

  String get fullname{
    return this.item.fullName;
  }
  
  bool get private{
    return this.item.private;
  }

  Owner get owner{
    return this.item.owner;
  }

  String get htmlurl{
    return this.item.htmlUrl;
  }

  String get description{
    return this.item.description;
  }

  bool get fork{
    return this.item.fork;
  }

  String get url{
    return this.item.url;
  }

  String get forksUrl{
    return this.item.forksUrl;
  }

  String get keysUrl{
    return this.item.keysUrl;
  }

  String get collabsurl{
    return this.item.collaboratorsUrl;
  }

  String get teamsUrl{
    return this.item.teamsUrl;
  }
  String get hooksUrl{
    return this.item.hooksUrl;
  }
  String get eventsUrl{
    return this.item.eventsUrl;
    }
  String get issueEventsUrl{
    return this.item.issueEventsUrl;
    }
  String get assigneesUrl{
    return this.item.assigneesUrl;
    }
  String get branchesUrl{
    return this.item.branchesUrl;
    }
  String get tagsUrl{
    return this.item.tagsUrl;
    }
  String get blobsUrl{
    return this.item.blobsUrl;
    }
  String get gitTagsUrl{
    return this.item.gitTagsUrl;
    }
  String get gitRefsUrl{
    return this.item.gitRefsUrl;
    }
  String get treesUrl{
    return this.item.treesUrl;
    }
  String get statusesUrl{
    return this.item.statusesUrl;
    }
  String get languagesUrl{
    return this.item.languagesUrl;
    }
  String get stargazersUrl{
    return this.item.stargazersUrl;
    }
  String get contributorsUrl{
    return this.item.contributorsUrl;
    }
  String get subscribersUrl{
    return this.item.subscribersUrl;
    }
  String get subscriptionUrl{
    return this.item.subscriptionUrl;
    }
  String get commitsUrl{
    return this.item.commitsUrl;
    }
  String get gitCommitsUrl{
    return this.item.gitCommitsUrl;
    }
  String get commentsUrl{
    return this.item.commentsUrl;
    }
  String get issueCommentUrl{
    return this.item.issueCommentUrl;
    }
  String get contentsUrl{
    return this.item.contentsUrl;
    }
  String get compareUrl{
    return this.item.compareUrl;
    }
  String get mergesUrl{
    return this.item.mergesUrl;
    }
  String get archiveUrl{
    return this.item.archiveUrl;
    }
  String get downloadsUrl{
    return this.item.downloadsUrl;
    }
  String get issuesUrl{
    return this.item.issuesUrl;
    }
  String get pullsUrl{
    return this.item.pullsUrl;
    }
  String get milestonesUrl{
    return this.item.milestonesUrl;
    }
  String get notificationsUrl{
    return this.item.notificationsUrl;
    }
  String get labelsUrl{
    return this.item.labelsUrl;
    }
  String get releasesUrl{
    return this.item.releasesUrl;
    }
  String get deploymentsUrl{
    return this.item.deploymentsUrl;
    }
  DateTime get createdAt{
    return this.item.createdAt;
    }
  DateTime get updatedAt{
    return this.item.updatedAt;
    }
  DateTime get pushedAt{
    return this.item.pushedAt;
    }
  String get gitUrl{
    return this.item.gitUrl;
    }
  String get sshUrl{
    return this.item.sshUrl;
    }
  String get cloneUrl{
    return this.item.cloneUrl;
    }
  String get svnUrl{
    return this.item.svnUrl;
    }
  String get homepage{
    return this.item.homepage;
    }
  int get size{
    return this.item.size;
    }
  int get stargazersCount{
    return this.item.stargazersCount;
    }
  int get watchersCount{
    return this.item.watchersCount;
    }
  Language get language{
    return this.item.language;
    }
  bool get hasIssues{
    return this.item.hasIssues;
    }
  bool get hasProjects{
    return this.item.hasProjects;
    }
  bool get hasDownloads{
    return this.item.hasDownloads;
    }
  bool get hasWiki{
    return this.item.hasWiki;
    }
  bool get hasPages{
    return this.item.hasPages;
    } 
  int get forksCount{
    return this.item.forksCount;
    }
  dynamic get mirrorUrl{
    return this.item.mirrorUrl;
    }
  bool get archived{
    return this.item.archived;
    }
  bool get disabled{
    return this.item.disabled;
    }
  int get openIssuesCount{
    return this.item.openIssuesCount;
    }
  License get license{
    return this.item.license;
    }
  int get forks{
    return this.item.forks;
    }
  int get openIssues{
    return this.item.openIssues;
    }
  int get watchers{
    return this.item.watchers;
    }
  DefaultBranch get defaultBranch{
    return this.item.defaultBranch;
    }
  double get score{
    return this.item.score;
    }
}
