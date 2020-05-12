import 'package:flutter/material.dart';
import 'package:github_app/view_model/home_screen_view_model.dart';
import 'package:provider_architecture/provider_architecture.dart';



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
            leading: CircleAvatar(child: Image.network('${model.uzi[index].owner.avatarUrl}'),),
          )
        ),
      ),
    );
  }
}