import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:restapi_listview_json/models/post.dart';
import 'package:restapi_listview_json/services/remote_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    //fetch data from API
    getData();
  }

  getData() async{
    posts = await RemoteService().getPosts();
    if(posts != null){
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          // scrollDirection: Axis.horizontal,
          itemCount: posts?.length,
          itemBuilder: (context, index) {
            return Container(
              child: Text(posts![index].title, style: TextStyle(fontSize: 20),),
            );
          }),
        replacement: const Center(child: CircularProgressIndicator(),),
      ),
    );

  }
}
