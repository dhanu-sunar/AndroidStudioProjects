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
        child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: posts?.length,
          itemBuilder: (BuildContext context, int index) => Container(
            child: Image.network(posts![index].thumbnailUrl),
            // child: Padding(
            //   padding: EdgeInsets.all(0.0),
            //   child: new ListTile(
            //     leading: Text('leading'),
            //     title: new Text(posts![index].title, style: TextStyle(fontWeight:FontWeight.bold, fontSize: 18.0)),
            //     subtitle: Text('Online Khabar'),
            //   ),
            // ),
          ),
          // itemBuilder: (context, index) {
          //   // if(posts![index].id==1){
          //   //   return Container(child: Text(posts![index].thumbnailUrl),);
          //   // }else{
          //   //   return Container(child: Text('No'),);
          //   // }
          //
          //   return Container(
          //     child: Text(posts![index].title, style: TextStyle(fontSize: 20),),
          //   );
          // }
          ),
        replacement: const Center(child: CircularProgressIndicator(),),
      ),
    );

  }
}
