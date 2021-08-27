import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:async';
import 'dart:convert';

Future<Album> fetchAlbum() async{
  final response = await http
      .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  if(response.statusCode ==200){
    return Album.fromJson(jsonDecode(response.body));
  }else{
    throw Exception('Faild');
  }
}

class Album{
  final int userId;
  final int id;
  final String title;

    Album({
    required this.userId,
    required this.id,
    required this.title,
  });

    factory Album.fromJson(Map<String, dynamic>json){
      return Album(userId: json["userId"], id: json["id"], title: json['title']);
    }

}