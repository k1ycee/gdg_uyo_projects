class GitHub {
    final int totalCount;
    final bool incompleteResults;
    final List<Item> items;

    GitHub({
        this.totalCount,
        this.incompleteResults,
        this.items,
    });

    factory GitHub.fromJson(Map<String, dynamic> json) => GitHub(
        totalCount: json["total_count"] == null ? null : json["total_count"],
        incompleteResults: json["incomplete_results"] == null ? null : json["incomplete_results"],
        items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "total_count": totalCount == null ? null : totalCount,
        "incomplete_results": incompleteResults == null ? null : incompleteResults,
        "items": items == null ? null : List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class Item {
    final int id;
    final String nodeId;
    final String name;
    final String fullName;
    final bool private;
    final Owner owner;
    final String htmlUrl;
    final String description;
    final bool fork;
    final String url;
    final String forksUrl;
    final String keysUrl;
    final String collaboratorsUrl;
    final String teamsUrl;
    final String hooksUrl;
    final String issueEventsUrl;
    final String eventsUrl;
    final String assigneesUrl;
    final String branchesUrl;
    final String tagsUrl;
    final String blobsUrl;
    final String gitTagsUrl;
    final String gitRefsUrl;
    final String treesUrl;
    final String statusesUrl;
    final String languagesUrl;
    final String stargazersUrl;
    final String contributorsUrl;
    final String subscribersUrl;
    final String subscriptionUrl;
    final String commitsUrl;
    final String gitCommitsUrl;
    final String commentsUrl;
    final String issueCommentUrl;
    final String contentsUrl;
    final String compareUrl;
    final String mergesUrl;
    final String archiveUrl;
    final String downloadsUrl;
    final String issuesUrl;
    final String pullsUrl;
    final String milestonesUrl;
    final String notificationsUrl;
    final String labelsUrl;
    final String releasesUrl;
    final String deploymentsUrl;
    final DateTime createdAt;
    final DateTime updatedAt;
    final DateTime pushedAt;
    final String gitUrl;
    final String sshUrl;
    final String cloneUrl;
    final String svnUrl;
    final String homepage;
    final int size;
    final int stargazersCount;
    final int watchersCount;
    final Language language;
    final bool hasIssues;
    final bool hasProjects;
    final bool hasDownloads;
    final bool hasWiki;
    final bool hasPages;
    final int forksCount;
    final dynamic mirrorUrl;
    final bool archived;
    final bool disabled;
    final int openIssuesCount;
    final License license;
    final int forks;
    final int openIssues;
    final int watchers;
    final DefaultBranch defaultBranch;
    final int score;

    Item({
        this.id,
        this.nodeId,
        this.name,
        this.fullName,
        this.private,
        this.owner,
        this.htmlUrl,
        this.description,
        this.fork,
        this.url,
        this.forksUrl,
        this.keysUrl,
        this.collaboratorsUrl,
        this.teamsUrl,
        this.hooksUrl,
        this.issueEventsUrl,
        this.eventsUrl,
        this.assigneesUrl,
        this.branchesUrl,
        this.tagsUrl,
        this.blobsUrl,
        this.gitTagsUrl,
        this.gitRefsUrl,
        this.treesUrl,
        this.statusesUrl,
        this.languagesUrl,
        this.stargazersUrl,
        this.contributorsUrl,
        this.subscribersUrl,
        this.subscriptionUrl,
        this.commitsUrl,
        this.gitCommitsUrl,
        this.commentsUrl,
        this.issueCommentUrl,
        this.contentsUrl,
        this.compareUrl,
        this.mergesUrl,
        this.archiveUrl,
        this.downloadsUrl,
        this.issuesUrl,
        this.pullsUrl,
        this.milestonesUrl,
        this.notificationsUrl,
        this.labelsUrl,
        this.releasesUrl,
        this.deploymentsUrl,
        this.createdAt,
        this.updatedAt,
        this.pushedAt,
        this.gitUrl,
        this.sshUrl,
        this.cloneUrl,
        this.svnUrl,
        this.homepage,
        this.size,
        this.stargazersCount,
        this.watchersCount,
        this.language,
        this.hasIssues,
        this.hasProjects,
        this.hasDownloads,
        this.hasWiki,
        this.hasPages,
        this.forksCount,
        this.mirrorUrl,
        this.archived,
        this.disabled,
        this.openIssuesCount,
        this.license,
        this.forks,
        this.openIssues,
        this.watchers,
        this.defaultBranch,
        this.score,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"] == null ? null : json["id"],
        nodeId: json["node_id"] == null ? null : json["node_id"],
        name: json["name"] == null ? null : json["name"],
        fullName: json["full_name"] == null ? null : json["full_name"],
        private: json["private"] == null ? null : json["private"],
        owner: json["owner"] == null ? null : Owner.fromJson(json["owner"]),
        htmlUrl: json["html_url"] == null ? null : json["html_url"],
        description: json["description"] == null ? null : json["description"],
        fork: json["fork"] == null ? null : json["fork"],
        url: json["url"] == null ? null : json["url"],
        forksUrl: json["forks_url"] == null ? null : json["forks_url"],
        keysUrl: json["keys_url"] == null ? null : json["keys_url"],
        collaboratorsUrl: json["collaborators_url"] == null ? null : json["collaborators_url"],
        teamsUrl: json["teams_url"] == null ? null : json["teams_url"],
        hooksUrl: json["hooks_url"] == null ? null : json["hooks_url"],
        issueEventsUrl: json["issue_events_url"] == null ? null : json["issue_events_url"],
        eventsUrl: json["events_url"] == null ? null : json["events_url"],
        assigneesUrl: json["assignees_url"] == null ? null : json["assignees_url"],
        branchesUrl: json["branches_url"] == null ? null : json["branches_url"],
        tagsUrl: json["tags_url"] == null ? null : json["tags_url"],
        blobsUrl: json["blobs_url"] == null ? null : json["blobs_url"],
        gitTagsUrl: json["git_tags_url"] == null ? null : json["git_tags_url"],
        gitRefsUrl: json["git_refs_url"] == null ? null : json["git_refs_url"],
        treesUrl: json["trees_url"] == null ? null : json["trees_url"],
        statusesUrl: json["statuses_url"] == null ? null : json["statuses_url"],
        languagesUrl: json["languages_url"] == null ? null : json["languages_url"],
        stargazersUrl: json["stargazers_url"] == null ? null : json["stargazers_url"],
        contributorsUrl: json["contributors_url"] == null ? null : json["contributors_url"],
        subscribersUrl: json["subscribers_url"] == null ? null : json["subscribers_url"],
        subscriptionUrl: json["subscription_url"] == null ? null : json["subscription_url"],
        commitsUrl: json["commits_url"] == null ? null : json["commits_url"],
        gitCommitsUrl: json["git_commits_url"] == null ? null : json["git_commits_url"],
        commentsUrl: json["comments_url"] == null ? null : json["comments_url"],
        issueCommentUrl: json["issue_comment_url"] == null ? null : json["issue_comment_url"],
        contentsUrl: json["contents_url"] == null ? null : json["contents_url"],
        compareUrl: json["compare_url"] == null ? null : json["compare_url"],
        mergesUrl: json["merges_url"] == null ? null : json["merges_url"],
        archiveUrl: json["archive_url"] == null ? null : json["archive_url"],
        downloadsUrl: json["downloads_url"] == null ? null : json["downloads_url"],
        issuesUrl: json["issues_url"] == null ? null : json["issues_url"],
        pullsUrl: json["pulls_url"] == null ? null : json["pulls_url"],
        milestonesUrl: json["milestones_url"] == null ? null : json["milestones_url"],
        notificationsUrl: json["notifications_url"] == null ? null : json["notifications_url"],
        labelsUrl: json["labels_url"] == null ? null : json["labels_url"],
        releasesUrl: json["releases_url"] == null ? null : json["releases_url"],
        deploymentsUrl: json["deployments_url"] == null ? null : json["deployments_url"],
        createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
        updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
        pushedAt: json["pushed_at"] == null ? null : DateTime.parse(json["pushed_at"]),
        gitUrl: json["git_url"] == null ? null : json["git_url"],
        sshUrl: json["ssh_url"] == null ? null : json["ssh_url"],
        cloneUrl: json["clone_url"] == null ? null : json["clone_url"],
        svnUrl: json["svn_url"] == null ? null : json["svn_url"],
        homepage: json["homepage"] == null ? null : json["homepage"],
        size: json["size"] == null ? null : json["size"],
        stargazersCount: json["stargazers_count"] == null ? null : json["stargazers_count"],
        watchersCount: json["watchers_count"] == null ? null : json["watchers_count"],
        language: json["language"] == null ? null : languageValues.map[json["language"]],
        hasIssues: json["has_issues"] == null ? null : json["has_issues"],
        hasProjects: json["has_projects"] == null ? null : json["has_projects"],
        hasDownloads: json["has_downloads"] == null ? null : json["has_downloads"],
        hasWiki: json["has_wiki"] == null ? null : json["has_wiki"],
        hasPages: json["has_pages"] == null ? null : json["has_pages"],
        forksCount: json["forks_count"] == null ? null : json["forks_count"],
        mirrorUrl: json["mirror_url"],
        archived: json["archived"] == null ? null : json["archived"],
        disabled: json["disabled"] == null ? null : json["disabled"],
        openIssuesCount: json["open_issues_count"] == null ? null : json["open_issues_count"],
        license: json["license"] == null ? null : License.fromJson(json["license"]),
        forks: json["forks"] == null ? null : json["forks"],
        openIssues: json["open_issues"] == null ? null : json["open_issues"],
        watchers: json["watchers"] == null ? null : json["watchers"],
        defaultBranch: json["default_branch"] == null ? null : defaultBranchValues.map[json["default_branch"]],
        score: json["score"] == null ? null : json["score"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "node_id": nodeId == null ? null : nodeId,
        "name": name == null ? null : name,
        "full_name": fullName == null ? null : fullName,
        "private": private == null ? null : private,
        "owner": owner == null ? null : owner.toJson(),
        "html_url": htmlUrl == null ? null : htmlUrl,
        "description": description == null ? null : description,
        "fork": fork == null ? null : fork,
        "url": url == null ? null : url,
        "forks_url": forksUrl == null ? null : forksUrl,
        "keys_url": keysUrl == null ? null : keysUrl,
        "collaborators_url": collaboratorsUrl == null ? null : collaboratorsUrl,
        "teams_url": teamsUrl == null ? null : teamsUrl,
        "hooks_url": hooksUrl == null ? null : hooksUrl,
        "issue_events_url": issueEventsUrl == null ? null : issueEventsUrl,
        "events_url": eventsUrl == null ? null : eventsUrl,
        "assignees_url": assigneesUrl == null ? null : assigneesUrl,
        "branches_url": branchesUrl == null ? null : branchesUrl,
        "tags_url": tagsUrl == null ? null : tagsUrl,
        "blobs_url": blobsUrl == null ? null : blobsUrl,
        "git_tags_url": gitTagsUrl == null ? null : gitTagsUrl,
        "git_refs_url": gitRefsUrl == null ? null : gitRefsUrl,
        "trees_url": treesUrl == null ? null : treesUrl,
        "statuses_url": statusesUrl == null ? null : statusesUrl,
        "languages_url": languagesUrl == null ? null : languagesUrl,
        "stargazers_url": stargazersUrl == null ? null : stargazersUrl,
        "contributors_url": contributorsUrl == null ? null : contributorsUrl,
        "subscribers_url": subscribersUrl == null ? null : subscribersUrl,
        "subscription_url": subscriptionUrl == null ? null : subscriptionUrl,
        "commits_url": commitsUrl == null ? null : commitsUrl,
        "git_commits_url": gitCommitsUrl == null ? null : gitCommitsUrl,
        "comments_url": commentsUrl == null ? null : commentsUrl,
        "issue_comment_url": issueCommentUrl == null ? null : issueCommentUrl,
        "contents_url": contentsUrl == null ? null : contentsUrl,
        "compare_url": compareUrl == null ? null : compareUrl,
        "merges_url": mergesUrl == null ? null : mergesUrl,
        "archive_url": archiveUrl == null ? null : archiveUrl,
        "downloads_url": downloadsUrl == null ? null : downloadsUrl,
        "issues_url": issuesUrl == null ? null : issuesUrl,
        "pulls_url": pullsUrl == null ? null : pullsUrl,
        "milestones_url": milestonesUrl == null ? null : milestonesUrl,
        "notifications_url": notificationsUrl == null ? null : notificationsUrl,
        "labels_url": labelsUrl == null ? null : labelsUrl,
        "releases_url": releasesUrl == null ? null : releasesUrl,
        "deployments_url": deploymentsUrl == null ? null : deploymentsUrl,
        "created_at": createdAt == null ? null : createdAt.toIso8601String(),
        "updated_at": updatedAt == null ? null : updatedAt.toIso8601String(),
        "pushed_at": pushedAt == null ? null : pushedAt.toIso8601String(),
        "git_url": gitUrl == null ? null : gitUrl,
        "ssh_url": sshUrl == null ? null : sshUrl,
        "clone_url": cloneUrl == null ? null : cloneUrl,
        "svn_url": svnUrl == null ? null : svnUrl,
        "homepage": homepage == null ? null : homepage,
        "size": size == null ? null : size,
        "stargazers_count": stargazersCount == null ? null : stargazersCount,
        "watchers_count": watchersCount == null ? null : watchersCount,
        "language": language == null ? null : languageValues.reverse[language],
        "has_issues": hasIssues == null ? null : hasIssues,
        "has_projects": hasProjects == null ? null : hasProjects,
        "has_downloads": hasDownloads == null ? null : hasDownloads,
        "has_wiki": hasWiki == null ? null : hasWiki,
        "has_pages": hasPages == null ? null : hasPages,
        "forks_count": forksCount == null ? null : forksCount,
        "mirror_url": mirrorUrl,
        "archived": archived == null ? null : archived,
        "disabled": disabled == null ? null : disabled,
        "open_issues_count": openIssuesCount == null ? null : openIssuesCount,
        "license": license == null ? null : license.toJson(),
        "forks": forks == null ? null : forks,
        "open_issues": openIssues == null ? null : openIssues,
        "watchers": watchers == null ? null : watchers,
        "default_branch": defaultBranch == null ? null : defaultBranchValues.reverse[defaultBranch],
        "score": score == null ? null : score,
    };
}

enum DefaultBranch { MASTER, MASTER_NEW }

final defaultBranchValues = EnumValues({
    "master": DefaultBranch.MASTER,
    "master-new": DefaultBranch.MASTER_NEW
});

enum Language { DART, C, CSS, HTML, JAVA }

final languageValues = EnumValues({
    "C++": Language.C,
    "CSS": Language.CSS,
    "Dart": Language.DART,
    "HTML": Language.HTML,
    "Java": Language.JAVA
});

class License {
    final String key;
    final String name;
    final String spdxId;
    final String url;
    final String nodeId;

    License({
        this.key,
        this.name,
        this.spdxId,
        this.url,
        this.nodeId,
    });

    factory License.fromJson(Map<String, dynamic> json) => License(
        key: json["key"] == null ? null : json["key"],
        name: json["name"] == null ? null : json["name"],
        spdxId: json["spdx_id"] == null ? null : json["spdx_id"],
        url: json["url"] == null ? null : json["url"],
        nodeId: json["node_id"] == null ? null : json["node_id"],
    );

    Map<String, dynamic> toJson() => {
        "key": key == null ? null : key,
        "name": name == null ? null : name,
        "spdx_id": spdxId == null ? null : spdxId,
        "url": url == null ? null : url,
        "node_id": nodeId == null ? null : nodeId,
    };
}

class Owner {
    final String login;
    final int id;
    final String nodeId;
    final String avatarUrl;
    final String gravatarId;
    final String url;
    final String htmlUrl;
    final String followersUrl;
    final String followingUrl;
    final String gistsUrl;
    final String starredUrl;
    final String subscriptionsUrl;
    final String organizationsUrl;
    final String reposUrl;
    final String eventsUrl;
    final String receivedEventsUrl;
    final Type type;
    final bool siteAdmin;

    Owner({
        this.login,
        this.id,
        this.nodeId,
        this.avatarUrl,
        this.gravatarId,
        this.url,
        this.htmlUrl,
        this.followersUrl,
        this.followingUrl,
        this.gistsUrl,
        this.starredUrl,
        this.subscriptionsUrl,
        this.organizationsUrl,
        this.reposUrl,
        this.eventsUrl,
        this.receivedEventsUrl,
        this.type,
        this.siteAdmin,
    });

    factory Owner.fromJson(Map<String, dynamic> json) => Owner(
        login: json["login"] == null ? null : json["login"],
        id: json["id"] == null ? null : json["id"],
        nodeId: json["node_id"] == null ? null : json["node_id"],
        avatarUrl: json["avatar_url"] == null ? null : json["avatar_url"],
        gravatarId: json["gravatar_id"] == null ? null : json["gravatar_id"],
        url: json["url"] == null ? null : json["url"],
        htmlUrl: json["html_url"] == null ? null : json["html_url"],
        followersUrl: json["followers_url"] == null ? null : json["followers_url"],
        followingUrl: json["following_url"] == null ? null : json["following_url"],
        gistsUrl: json["gists_url"] == null ? null : json["gists_url"],
        starredUrl: json["starred_url"] == null ? null : json["starred_url"],
        subscriptionsUrl: json["subscriptions_url"] == null ? null : json["subscriptions_url"],
        organizationsUrl: json["organizations_url"] == null ? null : json["organizations_url"],
        reposUrl: json["repos_url"] == null ? null : json["repos_url"],
        eventsUrl: json["events_url"] == null ? null : json["events_url"],
        receivedEventsUrl: json["received_events_url"] == null ? null : json["received_events_url"],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        siteAdmin: json["site_admin"] == null ? null : json["site_admin"],
    );

    Map<String, dynamic> toJson() => {
        "login": login == null ? null : login,
        "id": id == null ? null : id,
        "node_id": nodeId == null ? null : nodeId,
        "avatar_url": avatarUrl == null ? null : avatarUrl,
        "gravatar_id": gravatarId == null ? null : gravatarId,
        "url": url == null ? null : url,
        "html_url": htmlUrl == null ? null : htmlUrl,
        "followers_url": followersUrl == null ? null : followersUrl,
        "following_url": followingUrl == null ? null : followingUrl,
        "gists_url": gistsUrl == null ? null : gistsUrl,
        "starred_url": starredUrl == null ? null : starredUrl,
        "subscriptions_url": subscriptionsUrl == null ? null : subscriptionsUrl,
        "organizations_url": organizationsUrl == null ? null : organizationsUrl,
        "repos_url": reposUrl == null ? null : reposUrl,
        "events_url": eventsUrl == null ? null : eventsUrl,
        "received_events_url": receivedEventsUrl == null ? null : receivedEventsUrl,
        "type": type == null ? null : typeValues.reverse[type],
        "site_admin": siteAdmin == null ? null : siteAdmin,
    };
}

enum Type { ORGANIZATION, USER }

final typeValues = EnumValues({
    "Organization": Type.ORGANIZATION,
    "User": Type.USER
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
