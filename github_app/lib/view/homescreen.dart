import 'package:flutter/material.dart';
import 'package:github_app/view_model/home_screen_view_model.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';



class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelProvider<GetUser>.withConsumer(
      viewModelBuilder: () => GetUser(),
      onModelReady: (model) => model.bringUser(),
      builder: (context,model, _) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[850],
          title: Text('Github Users', style: TextStyle(color: Colors.white),
          ),
        ),
        body: ListView.builder(
          itemCount: model.uzi.length,
          itemBuilder: (context, index) => ListTile(
            contentPadding: EdgeInsets.all(10),
            dense: false,
            leading: Container(height: 100,width: 50,decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("${model.uzi[index].owner.avatarUrl}"),
                fit: BoxFit.fill
              ),
              borderRadius: BorderRadius.circular(300)
            ),),
            title: Text('${model.uzi[index].owner.login}', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),),
            subtitle: Text('Not Found', style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15),),
            trailing: OutlineButton.icon(
              onPressed: ()async{
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => WebviewScaffold(
                      url:'${model.uzi[index].owner.htmlUrl}',
                      appBar: AppBar(
                        title: Text('${model.uzi[index].owner.login}'),
                        elevation: 0,
                        backgroundColor: Colors.grey[850],
                      ),
                      withJavascript: true,
                      withLocalStorage: true,
                      withZoom: true,
                      initialChild: Center(child: CircularProgressIndicator(valueColor: AlwaysStoppedAnimation(Colors.blue),),),
                    ),
                  )
                );
              }
            ,label: Text('View Profile'), icon: FaIcon(FontAwesomeIcons.github),borderSide: BorderSide(width: 1), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
            ),
          )
        ),
      ),
    );
  }
}